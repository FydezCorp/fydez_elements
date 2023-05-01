import 'package:flutter/material.dart';
import 'package:fydez_elements/button/fy_button.dart';

import '../options/icon_button_option.dart';

class MaterialIconButton extends FyButton {
  const MaterialIconButton(
      {super.key, required super.onPressed, required super.options});

  @override
  Widget build(BuildContext context) {
    final option = options as IconButtonOption;
    return IconButton(
      onPressed: onPressed,
      style: options.style,
      icon: Icon(
        option.icon,
        size: option.size,
        color: option.iconColor,
      ),
    );
  }
}
