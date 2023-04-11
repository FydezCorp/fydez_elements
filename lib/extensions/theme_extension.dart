import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

extension ThemeExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  ThemeData get theme => Theme.of(this);
  FyTextColor get fyColors => Theme.of(this).extension<FyTextColor>()!;
  FyThemeParameters get fyParameters => Theme.of(this).extension<FyThemeParameters>()!;
  FyPrimaryColor get primaryColors =>
      Theme.of(this).extension<FyPrimaryColor>()!;
}
