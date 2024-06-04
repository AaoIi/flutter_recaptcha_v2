import 'package:flutter/material.dart';

abstract interface class BottomSheetPageChildDelegate {
  const BottomSheetPageChildDelegate();

  BoxDecoration get boxDecoration;

  WidgetBuilder get builder;

  EdgeInsets? get padding;

  BoxConstraints get constraints;

  double get anchorTop;

  VoidCallback? get onCanceled;
}

class BottomSheetPageDelegate extends BottomSheetPageChildDelegate {
  const BottomSheetPageDelegate({
    required this.builder,
    this.boxDecoration = const BoxDecoration(),
    this.constraints = const BoxConstraints(),
    this.padding = EdgeInsets.zero,
    this.anchorTop = 0,
    this.onCanceled,
  });

  @override
  final BoxDecoration boxDecoration;

  @override
  final WidgetBuilder builder;

  @override
  final EdgeInsets? padding;

  @override
  final BoxConstraints constraints;

  @override
  final double anchorTop;

  @override
  final VoidCallback? onCanceled;
}
