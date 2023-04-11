import 'package:flutter/material.dart';

/// A theme extension for return the different gray colors used primarily for texts.

class FyTextColor extends ThemeExtension<FyTextColor> {
  final Color textOneColor;
  final Color textTwoColor;
  final Color textThreeColor;
  final Color textFourColor;
  final Color textFiveColor;
  final Color textSixColor;
  final Color textSevenColor;
  final Color textEightColor;
  final Color textNineColor;
  final Color textTenColor;
  FyTextColor({
    required this.textOneColor,
    required this.textTwoColor,
    required this.textThreeColor,
    required this.textFourColor,
    required this.textFiveColor,
    required this.textSixColor,
    required this.textSevenColor,
    required this.textEightColor,
    required this.textNineColor,
    required this.textTenColor,
  });

  @override
  FyTextColor copyWith({
    Color? textOneColor,
    Color? textTwoColor,
    Color? textThreeColor,
    Color? textFourColor,
    Color? textFiveColor,
    Color? textSixColor,
    Color? textSevenColor,
    Color? textEightColor,
    Color? textNineColor,
    Color? textTenColor,
  }) {
    return FyTextColor(
        textOneColor: textOneColor ?? this.textOneColor,
        textTwoColor: textTwoColor ?? this.textTwoColor,
        textThreeColor: textThreeColor ?? this.textThreeColor,
        textFourColor: textFourColor ?? this.textFourColor,
        textFiveColor: textFiveColor ?? this.textFiveColor,
        textSixColor: textSixColor ?? this.textSixColor,
        textSevenColor: textSevenColor ?? this.textSevenColor,
        textEightColor: textEightColor ?? this.textEightColor,
        textNineColor: textNineColor ?? this.textNineColor,
        textTenColor: textTenColor ?? this.textTenColor);
  }

  @override
  ThemeExtension<FyTextColor> lerp(
      ThemeExtension<FyTextColor>? other, double t) {
    if (other is! FyTextColor) {
      return this;
    }
    return FyTextColor(
      textOneColor: Color.lerp(textOneColor, other.textOneColor, t)!,
      textTwoColor: Color.lerp(textTwoColor, other.textTwoColor, t)!,
      textThreeColor: Color.lerp(textThreeColor, other.textThreeColor, t)!,
      textFourColor: Color.lerp(textFourColor, other.textFourColor, t)!,
      textFiveColor: Color.lerp(textFiveColor, other.textFiveColor, t)!,
      textSixColor: Color.lerp(textSixColor, other.textSixColor, t)!,
      textSevenColor: Color.lerp(textSevenColor, other.textSevenColor, t)!,
      textEightColor: Color.lerp(textEightColor, other.textEightColor, t)!,
      textNineColor: Color.lerp(textNineColor, other.textNineColor, t)!,
      textTenColor: Color.lerp(textTenColor, other.textTenColor, t)!,
    );
  }
}
