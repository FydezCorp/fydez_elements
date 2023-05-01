import 'package:flutter/material.dart';
import 'package:fydez_elements/button/options/button_option.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'material_buttons/material_filled_button.dart';
import 'material_buttons/material_outlined_button.dart';

abstract class FyButtonFactory extends StatelessWidget {
  static Map<String, Map<String, FyButtonFactory>> _factories(
          VoidCallback onPressed, ButtonOption options) =>
      {
        'material': {
          'filled': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
          'outlined': MaterialOutlinedButton(
            onPressed: onPressed,
            options: options,
          ),
          'icon': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
          'text': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
        },
        'airbnb': {
          'filled': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
          'outlined': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
          'icon': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
          'text': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
        },
        'cupertino': {
          'filled': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
          'outlined': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
          'icon': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
          'text': MaterialFilledButton(
            onPressed: onPressed,
            options: options,
          ),
        },
      };

  const FyButtonFactory(
      {Key? key, required this.onPressed, required this.options})
      : super(key: key);

  final VoidCallback onPressed;
  final ButtonOption options;

  static FyButtonFactory create(
      {required ButtonDesignStyle style,
      required VoidCallback onPressed,
      required ButtonOption options}) {
    if (_factories(onPressed, options)[FyHandler.designSystem.value]!
        .containsKey(style.value)) {
      /// if we have this style on our _factories then we return related item
      /// else we don't have we return the first item of this design system
      return _factories(
          onPressed, options)[FyHandler.designSystem.value]![style.value]!;
    } else {
      return _factories(onPressed, options)[FyHandler.designSystem.value]![0]!;
    }
  }
}
