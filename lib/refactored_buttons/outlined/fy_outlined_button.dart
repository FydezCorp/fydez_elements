import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'outlined_button_factory.dart';

class FyOutlinedButton {
  static create(
    BuildContext context, {
    required VoidCallback onPressed,
    required String title,
    ButtonState? state,
    IconData? icon,
    Color? backgroundColor,
    Color? foregroundColor,
    double? cornerRadius,
    double? height,
    OutlinedButtonType? type,
  }) {
    final finalCornerRadius = cornerRadius ??
        context.fyParameters.buttonConfiguration.outlinedCornerRadius;
    final finalType =
        type ?? context.fyParameters.buttonConfiguration.outlinedType;
    final finalButtonState = state ?? ButtonState.active;
    return OutlinedButtonFactory(type: finalType).build(
      onPressed: onPressed,
      title: title,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      cornerRadius: finalCornerRadius,
      height: height,
      icon: icon,
      state: finalButtonState,
    );
  }
}
