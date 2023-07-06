import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/refactored_buttons/filled/filled_button_factory.dart';

class FyFilledButton {
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
    FilledButtonType? type,
  }) {
    final finalCornerRadius = cornerRadius ??
        context.fyParameters.buttonConfiguration.filledCornerRadius;
    final finalType =
        type ?? context.fyParameters.buttonConfiguration.filledType;
    final finalButtonState = state ?? ButtonState.active;
    return FilledButtonFactory(type: finalType).build(
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
