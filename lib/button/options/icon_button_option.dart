import 'package:flutter/material.dart';
import 'package:fydez_elements/constants.dart';

import 'button_option.dart';

class IconButtonOption extends ButtonOption {
  final IconData icon;
  final double? size;
  final Color? iconColor;

  IconButtonOption({
    ButtonStyle? style,
    required this.icon,
    this.iconColor,
    this.size = Constants.buttonIconSize,
  }) : super(style: style);
}
