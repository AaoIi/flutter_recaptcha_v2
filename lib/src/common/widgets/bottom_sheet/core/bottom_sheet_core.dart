part of '../bottom_sheet_page_view.dart';

class _BottomSheetWidget extends StatelessWidget {
  const _BottomSheetWidget({required this.controller});
  final BottomSheetPageViewController controller;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        final maxHeight = MediaQuery.sizeOf(context).height;
        final currentHeight = controller.height;
        final oldYPosition = maxHeight - currentHeight;
        final newPosition = details.delta.dy;
        final sumPosition = oldYPosition + newPosition;
        final newHeight = maxHeight - sumPosition;
        controller.onDragUpdate(newHeight);
      },
      onVerticalDragEnd: (details) {
        controller.onDragEnd();
      },
      onVerticalDragStart: (_) => controller.onDragStart(),
      behavior: HitTestBehavior.translucent,
      child: ListenableBuilder(
        listenable: controller,
        builder: (BuildContext context, Widget? child) {
          return AnimatedContainer(
            height: controller.height,
            decoration: controller.decoration,
            duration: controller.status.isDrag
                ? Duration.zero
                : const Duration(milliseconds: 250),
            curve: controller.status.isDrag ? Curves.linear : Curves.decelerate,
            child: PageView.custom(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller.pageController,
              childrenDelegate: SliverChildBuilderDelegate((context, index) {
                return _BottomSheetPageChild(
                  controller: controller,
                  delegate: controller.children.elementAt(index),
                  page: index,
                );
              }),
            ),
          );
        },
      ),
    );
  }
}

class _BottomSheetPageChild extends StatelessWidget {
  const _BottomSheetPageChild({
    required this.controller,
    required this.delegate,
    required this.page,
  });

  final BottomSheetPageViewController controller;
  final BottomSheetPageChildDelegate delegate;
  final int page;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return OverflowBox(
      minHeight: 0,
      maxHeight: max(size.height - delegate.anchorTop, 0),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: delegate.constraints,
        child: _BottomSheetSizeReportingWidget(
          onSizeChange: (size) {
            controller.initPageHeight(
              size.height,
              controller.indexOf(delegate),
            );
          },
          child: Padding(
            padding: delegate.padding ?? const EdgeInsets.all(20),
            child: delegate.builder(context),
          ),
        ),
      ),
    );
  }
}

class _BottomSheetSizeReportingWidget extends StatefulWidget {
  final Widget child;
  final ValueChanged<Size> onSizeChange;

  const _BottomSheetSizeReportingWidget({
    required this.child,
    required this.onSizeChange,
  });

  @override
  _BottomSheetSizeReportingWidgetState createState() =>
      _BottomSheetSizeReportingWidgetState();
}

class _BottomSheetSizeReportingWidgetState
    extends State<_BottomSheetSizeReportingWidget> {
  Size? oldSize;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _notifySize(context));
    return widget.child;
  }

  @override
  void reassemble() {
    super.reassemble();
    oldSize = null;
  }

  void _notifySize(BuildContext context) {
    if (context.mounted) {
      final size = context.size;
      if (oldSize != size) {
        oldSize = size;
        widget.onSizeChange(size ?? Size.zero);
      }
    }
  }
}
