import 'package:flutter/material.dart';
import 'package:fydez_elements/constants.dart';

import 'button_option.dart';

class TextButtonOption extends ButtonOption {
  final String text;
  final IconData? icon;
  final double? height;

  TextButtonOption({
    ButtonStyle? style,
    required this.text,
    this.icon,
    this.height = Constants.buttonDefaultHeight,
  }) : super(style: style);
}
