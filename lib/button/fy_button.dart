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

  static FyButton create({
    required ButtonDesignStyle style,
    required VoidCallback onPressed,
    required ButtonOption options,
  }) {
    switch (style) {
      case ButtonDesignStyle.filled:
        return MaterialFilledButton(
          onPressed: onPressed,
          options: options,
        );
      case ButtonDesignStyle.outlined:
        return MaterialOutlinedButton(
          onPressed: onPressed,
          options: options,
        );
      case ButtonDesignStyle.text:
        return MaterialTextButton(
          onPressed: onPressed,
          options: options,
        );
      case ButtonDesignStyle.icon:
        return MaterialIconButton(
          onPressed: onPressed,
          options: options,
        );
    }
  }
}
