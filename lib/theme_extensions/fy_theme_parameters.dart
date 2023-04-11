import 'package:flutter/material.dart';

class FyThemeParameters extends ThemeExtension<FyThemeParameters> {
  final double buttonCornerRadius;
  final double inputsBorderRadius;
  final double defaultVerticalPadding;
  final double defaultHorizontalPadding;

  FyThemeParameters(
      {required this.buttonCornerRadius,
      required this.inputsBorderRadius,
      required this.defaultVerticalPadding,
      required this.defaultHorizontalPadding});

  @override
  ThemeExtension<FyThemeParameters> copyWith({
    double? buttonCornerRadius,
    double? inputsBorderRadius,
    double? defaultVerticalPadding,
    double? defaultHorizontalPadding,
  }) {
    return FyThemeParameters(
      buttonCornerRadius: buttonCornerRadius ?? this.buttonCornerRadius,
      inputsBorderRadius: inputsBorderRadius ?? this.inputsBorderRadius,
      defaultVerticalPadding:
          defaultVerticalPadding ?? this.defaultVerticalPadding,
      defaultHorizontalPadding:
          defaultHorizontalPadding ?? this.defaultHorizontalPadding,
    );
  }

  @override
  ThemeExtension<FyThemeParameters> lerp(
      ThemeExtension<FyThemeParameters>? other, double t) {
    if (other is! FyThemeParameters) {
      return this;
    }
    return FyThemeParameters(
      buttonCornerRadius: buttonCornerRadius,
      inputsBorderRadius: inputsBorderRadius,
      defaultVerticalPadding: defaultVerticalPadding,
      defaultHorizontalPadding: defaultHorizontalPadding,
    );
  }
}
