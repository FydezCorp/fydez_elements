import 'package:flutter/material.dart';

/// A theme extension for for primary colors.

class FyPrimaryColor extends ThemeExtension<FyPrimaryColor> {
  final Color primaryOneColor;
  final Color primaryTwoColor;
  final Color primaryThreeColor;
  final Color primaryFourColor;
  final Color primaryFiveColor;
  final Color primarySixColor;
  final Color primarySevenColor;
  final Color primaryEightColor;
  final Color primaryNineColor;
  final Color primaryTenColor;
  FyPrimaryColor({
    required this.primaryOneColor,
    required this.primaryTwoColor,
    required this.primaryThreeColor,
    required this.primaryFourColor,
    required this.primaryFiveColor,
    required this.primarySixColor,
    required this.primarySevenColor,
    required this.primaryEightColor,
    required this.primaryNineColor,
    required this.primaryTenColor,
  });

  @override
  FyPrimaryColor copyWith({
    Color? primaryOneColor,
    Color? primaryTwoColor,
    Color? primaryThreeColor,
    Color? primaryFourColor,
    Color? primaryFiveColor,
    Color? primarySixColor,
    Color? primarySevenColor,
    Color? primaryEightColor,
    Color? primaryNineColor,
    Color? primaryTenColor,
  }) {
    return FyPrimaryColor(
      primaryOneColor: primaryOneColor ?? this.primaryOneColor,
      primaryTwoColor: primaryTwoColor ?? this.primaryTwoColor,
      primaryThreeColor: primaryThreeColor ?? this.primaryThreeColor,
      primaryFourColor: primaryFourColor ?? this.primaryFourColor,
      primaryFiveColor: primaryFiveColor ?? this.primaryFiveColor,
      primarySixColor: primarySixColor ?? this.primarySixColor,
      primarySevenColor: primarySevenColor ?? this.primarySevenColor,
      primaryEightColor: primaryEightColor ?? this.primaryEightColor,
      primaryNineColor: primaryNineColor ?? this.primaryNineColor,
      primaryTenColor: primaryTenColor ?? this.primaryTenColor,
    );
  }

  MaterialColor get primarySwatch => MaterialColor(
        primaryFiveColor.value,
        <int, Color>{
          50: primaryOneColor,
          100: primaryTwoColor,
          200: primaryThreeColor,
          300: primaryFourColor,
          400: primaryFiveColor,
          500: primarySixColor,
          600: primarySevenColor,
          700: primaryEightColor,
          800: primaryNineColor,
          900: primaryTenColor,
        },
      );
  @override
  ThemeExtension<FyPrimaryColor> lerp(
      ThemeExtension<FyPrimaryColor>? other, double t) {
    if (other is! FyPrimaryColor) {
      return this;
    }

    return FyPrimaryColor(
      primaryOneColor: Color.lerp(primaryOneColor, other.primaryOneColor, t)!,
      primaryTwoColor: Color.lerp(primaryTwoColor, other.primaryTwoColor, t)!,
      primaryThreeColor:
          Color.lerp(primaryThreeColor, other.primaryThreeColor, t)!,
      primaryFourColor:
          Color.lerp(primaryFourColor, other.primaryFourColor, t)!,
      primaryFiveColor:
          Color.lerp(primaryFiveColor, other.primaryFiveColor, t)!,
      primarySixColor: Color.lerp(primarySixColor, other.primarySixColor, t)!,
      primarySevenColor:
          Color.lerp(primarySevenColor, other.primarySevenColor, t)!,
      primaryEightColor:
          Color.lerp(primaryEightColor, other.primaryEightColor, t)!,
      primaryNineColor:
          Color.lerp(primaryNineColor, other.primaryNineColor, t)!,
      primaryTenColor: Color.lerp(primaryTenColor, other.primaryTenColor, t)!,
    );
  }
}
