import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'icon_button_factory.dart';

class FyIconButton {
  static create(
    BuildContext context, {
    required VoidCallback onPressed,
    ButtonState? state,
    required IconData icon,
    Color? backgroundColor,
    Color? foregroundColor,
    double? iconSize,
    double? height,
    IconButtonType? type,
  }) {
    final finalType = type ?? context.fyParameters.buttonConfiguration.iconType;
    final finalButtonState = state ?? ButtonState.active;
    return IconButtonFactory(type: finalType).build(
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      height: height,
      icon: icon,
      state: finalButtonState,
      iconSize: iconSize,
    );
  }
}
