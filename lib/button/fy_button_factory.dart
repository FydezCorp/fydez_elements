import 'package:flutter/material.dart';
import 'package:fydez_elements/button/button_options.dart';
import 'package:fydez_elements/enum/button_design_style.dart';
import 'package:fydez_elements/enum/design_system.dart';
import 'material_filled_button.dart';

abstract class FyButtonFactory {
  static final Map<String, Map<String, FyButtonFactory>> _factories = {
    'material': {
      'filled': MaterialFilledButton(),
      'outlined': MaterialFilledButton(),
      'icon': MaterialFilledButton(),
      'text': MaterialFilledButton(),
    },
    'airbnb': {
      'filled': MaterialFilledButton(),
      'outlined': MaterialFilledButton(),
      'icon': MaterialFilledButton(),
      'text': MaterialFilledButton(),
    },
  };
  static FyButtonFactory fromStyle(
      DesignSystem designSystem, ButtonDesignStyle style) {
    FyButtonFactory factory = _factories[designSystem.value]![style.value]!;
    return factory;
  }

  Widget createButton(VoidCallback onPressed, ButtonOptions options);
}
