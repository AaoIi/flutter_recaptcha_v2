import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../core/bottom_sheet_page_delegate.dart';
import 'bottom_sheet_page_state.dart';

class BottomSheetPageViewController extends ChangeNotifier {
  final ObserverList<VoidCallback> _closeListeners =
      ObserverList<VoidCallback>();

  final double _anchor;
  late final PageController pageController;
  late BottomSheetState value;

  List<BottomSheetPageChildDelegate> get children => value.children;
  int get pageIndex => value.currentPage;
  int get pageSize => children.length;

  BottomSheetStatus get status => value.status;
  BottomSheetPageViewController(
      List<BottomSheetPageChildDelegate> children, double? anchor)
      : _anchor = anchor ?? .5 {
    value = BottomSheetState.init(children: children);
    pageController = PageController()..addListener(_listenPageChange);
  }

  void addCloseListener(VoidCallback? voidCallback) {
    if (voidCallback == null) return;
    _closeListeners.add(voidCallback);
  }

  void notifyCloseListener() {
    for (var element in _closeListeners) {
      element.call();
    }
  }

  void _listenPageChange() {
    final currentHeight = value.heights[value.currentPage] ?? value.dragHeight;
    final preHeight = value.heights[value.prePage] ?? 0;
    final pageOffsetIndex = pageController.page ?? 0;
    final process = (pageIndex - pageOffsetIndex).abs();
    final processToOffset = (currentHeight - preHeight) * process;
    final result = currentHeight - processToOffset;
    value = value.copyWith(initHeight: result);
    notifyListeners();
  }

  void onDragStart() {
    value = value.copyWith(
      dragHeight: value.initHeight,
      status: BottomSheetStatus.drag,
    );
    notifyListeners();
  }

  void onDragEnd() {
    final double heightAffect =
        value.dragHeight / value.initHeight <= _anchor ? 0 : value.initHeight;
    final isClose = heightAffect <= 0;
    value = value.copyWith(
      initHeight: heightAffect,
      dragHeight: heightAffect,
      status: isClose ? BottomSheetStatus.close : BottomSheetStatus.idle,
    );
    if (isClose) {
      notifyCloseListener();
    }
    notifyListeners();
  }

  void onDragUpdate(double height) {
    if (height >= value.initHeight) return;
    value = value.copyWith(
      dragHeight: height,
      status: BottomSheetStatus.drag,
    );
    notifyListeners();
  }

  void initPageHeight(double height, int index) {
    if (index == 0 && value.dragHeight == 0) {
      _initStartPage(height);
    } else {
      _initPageHeight(height, index);
    }
  }

  void _initPageHeight(double height, int index) {
    final heights = Map<int, double>.from(value.heights);
    heights[index] = height;
    value = value.copyWith(
      heights: heights,
      status: BottomSheetStatus.idle,
    );
    notifyListeners();
  }

  void _initStartPage(double height) {
    if (height != value.initHeight) {
      final heights = Map<int, double>.from(value.heights);
      heights[0] = height;
      value = value.copyWith(
        initHeight: height,
        heights: heights,
        status: BottomSheetStatus.idle,
      );
      notifyListeners();
    }
  }

  void onPageChange(int newPage) {
    value = value.copyWith(
      prePage: value.currentPage,
      currentPage: newPage,
    );
    notifyListeners();
  }

  BoxDecoration get decoration {
    final pageSelected = value.pageSelected;
    if (pageSelected == null) return const BoxDecoration();
    return pageSelected.boxDecoration;
  }

  double get height {
    return value.status.maybeMap(
      drag: (drag) => value.dragHeight,
      orElse: () => value.initHeight,
    );
  }

  @override
  void dispose() {
    pageController.removeListener(_listenPageChange);
    pageController.dispose();
    super.dispose();
  }

  void jumpNext() {
    if (pageIndex >= pageSize - 1) {
      jumpToPage(0);
      return;
    }
    jumpToPage(pageIndex + 1);
  }

  void jumpPrevious() {
    if (pageIndex > 0) {
      jumpToPage(pageIndex - 1);
    } else {
      jumpToPage(pageSize - 1);
    }
  }

  int indexOf(BottomSheetPageChildDelegate delegate) {
    return children.indexOf(delegate);
  }

  Future jumpToPage(int page) async {
    onPageChange(page);
    await pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
  }
}
