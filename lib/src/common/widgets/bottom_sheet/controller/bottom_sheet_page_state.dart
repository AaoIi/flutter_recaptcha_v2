import 'package:enum_annotation/enum_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/bottom_sheet_page_delegate.dart';

part 'bottom_sheet_page_state.freezed.dart';
part 'bottom_sheet_page_state.g.dart';

@generate
enum BottomSheetStatus {
  init,
  idle,
  drag,
  close,
}

@freezed
class BottomSheetState with _$BottomSheetState {
  const BottomSheetState._();

  const factory BottomSheetState({
    @Default(<BottomSheetPageChildDelegate>[])
    List<BottomSheetPageChildDelegate> children,
    @Default(BottomSheetStatus.idle) BottomSheetStatus status,
    @Default(<int, double>{}) Map<int, double> heights,
    @Default(0) double dragHeight,
    @Default(-1) int currentPage,
    @Default(-1) int prePage,
    @Default(0) double initHeight,
  }) = _BottomSheetState;

  factory BottomSheetState.init({
    List<BottomSheetPageChildDelegate> children = const [],
  }) =>
      BottomSheetState(
        children: children,
        currentPage: children.isNotEmpty ? 0 : -1,
      );

  BottomSheetPageChildDelegate? get pageSelected {
    if (currentPage < 0) return null;
    return children.elementAtOrNull(currentPage);
  }
}
