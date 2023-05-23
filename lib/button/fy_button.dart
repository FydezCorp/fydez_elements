import 'package:flutter/material.dart';
import 'package:fydez_elements/button/material_buttons/material_icon_button.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'material_buttons/material_filled_button.dart';
import 'material_buttons/material_outlined_button.dart';
import 'material_buttons/material_text_button.dart';

abstract class FyButton extends StatelessWidget {
  const FyButton({
    Key? key,
    required this.onPressed,
    required this.options,
  }) : super(key: key);

  final VoidCallback onPressed;
  final ButtonOption options;

  static Widget filled({
    required VoidCallback onPressed,
    required FilledButtonOption options,
  }) {
    return MaterialFilledButton(
      onPressed: onPressed,
      options: options,
    );
  }

  static Widget outlined({
    required VoidCallback onPressed,
    required OutlinedButtonOption options,
  }) {
    return MaterialOutlinedButton(
      onPressed: onPressed,
      options: options,
    );
  }

  static Widget text({
    required VoidCallback onPressed,
    required TextButtonOption options,
  }) {
    return MaterialTextButton(
      onPressed: onPressed,
      options: options,
    );
  }

  static Widget icon({
    required VoidCallback onPressed,
    required IconButtonOption options,
  }) {
    return MaterialIconButton(
      onPressed: onPressed,
      options: options,
    );
  }
}
