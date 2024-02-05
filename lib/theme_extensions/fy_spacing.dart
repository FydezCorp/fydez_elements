// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class FySpacing extends ThemeExtension<FySpacing> {
  final num topBottomPadding;
  final num rightLeftPadding;
  final num cornerRadius;

  FySpacing({
    required this.topBottomPadding,
    required this.rightLeftPadding,
    required this.cornerRadius,
  });

  @override
  ThemeExtension<FySpacing> lerp(
      covariant ThemeExtension<FySpacing>? other, double t) {
    if (other is! FySpacing) {
      return this;
    }

    return FySpacing(
      topBottomPadding: topBottomPadding,
      rightLeftPadding: rightLeftPadding,
      cornerRadius: cornerRadius,
    );
  }

  @override
  FySpacing copyWith({
    num? topBottomPadding,
    num? rightLeftPadding,
    num? cornerRadius,
  }) {
    return FySpacing(
      topBottomPadding: topBottomPadding ?? this.topBottomPadding,
      rightLeftPadding: rightLeftPadding ?? this.rightLeftPadding,
      cornerRadius: cornerRadius ?? this.cornerRadius,
    );
  }
}
