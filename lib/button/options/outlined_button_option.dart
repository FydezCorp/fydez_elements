import 'package:flutter/material.dart';
import 'package:fydez_elements/const/constants.dart';

import 'button_option.dart';

class OutlinedButtonOption extends ButtonOption {
  final String text;
  final IconData? icon;
  final double? height;

  OutlinedButtonOption({
    ButtonStyle? style,
    required this.text,
    this.icon,
    this.height = Constants.buttonDefaultHeight,
  }) : super(style: style);
}
