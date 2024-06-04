// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_sheet_page_state.dart';

// **************************************************************************
// FunctionalEnumGenerator
// **************************************************************************

extension BottomSheetStatusX on BottomSheetStatus {
  bool get isInit => this == BottomSheetStatus.init;
  bool get isIdle => this == BottomSheetStatus.idle;
  bool get isDrag => this == BottomSheetStatus.drag;
  bool get isClose => this == BottomSheetStatus.close;
  R map<R>({
    required R Function(BottomSheetStatus init) init,
    required R Function(BottomSheetStatus idle) idle,
    required R Function(BottomSheetStatus drag) drag,
    required R Function(BottomSheetStatus close) close,
  }) {
    switch (this) {
      case BottomSheetStatus.init:
        return init(this);
      case BottomSheetStatus.idle:
        return idle(this);
      case BottomSheetStatus.drag:
        return drag(this);
      case BottomSheetStatus.close:
        return close(this);
    }
  }

  R maybeMap<R>({
    R Function(BottomSheetStatus init)? init,
    R Function(BottomSheetStatus idle)? idle,
    R Function(BottomSheetStatus drag)? drag,
    R Function(BottomSheetStatus close)? close,
    required R Function() orElse,
  }) {
    if (this == BottomSheetStatus.init && init != null) {
      return init(this);
    } else if (this == BottomSheetStatus.idle && idle != null) {
      return idle(this);
    } else if (this == BottomSheetStatus.drag && drag != null) {
      return drag(this);
    } else if (this == BottomSheetStatus.close && close != null) {
      return close(this);
    } else {
      return orElse();
    }
  }

  R maybeWhen<R>({
    R Function()? init,
    R Function()? idle,
    R Function()? drag,
    R Function()? close,
    required R Function() orElse,
  }) {
    if (this == BottomSheetStatus.init && init != null) {
      return init();
    } else if (this == BottomSheetStatus.idle && idle != null) {
      return idle();
    } else if (this == BottomSheetStatus.drag && drag != null) {
      return drag();
    } else if (this == BottomSheetStatus.close && close != null) {
      return close();
    } else {
      return orElse();
    }
  }

  R when<R>({
    required R Function() init,
    required R Function() idle,
    required R Function() drag,
    required R Function() close,
  }) {
    switch (this) {
      case BottomSheetStatus.init:
        return init();
      case BottomSheetStatus.idle:
        return idle();
      case BottomSheetStatus.drag:
        return drag();
      case BottomSheetStatus.close:
        return close();
    }
  }

  R? whenOrNull<R>({
    R Function()? init,
    R Function()? idle,
    R Function()? drag,
    R Function()? close,
    R Function()? orElse,
  }) {
    if (this == BottomSheetStatus.init && init != null) {
      return init();
    } else if (this == BottomSheetStatus.idle && idle != null) {
      return idle();
    } else if (this == BottomSheetStatus.drag && drag != null) {
      return drag();
    } else if (this == BottomSheetStatus.close && close != null) {
      return close();
    } else {
      return orElse?.call();
    }
  }
}
