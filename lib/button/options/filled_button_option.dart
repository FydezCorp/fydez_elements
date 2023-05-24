import 'package:flutter/material.dart';

import '../../const/constants.dart';
import 'button_option.dart';

class FilledButtonOption extends ButtonOption {
  final String text;
  final IconData? icon;
  final double? height;

  FilledButtonOption({
    ButtonStyle? style,
    required this.text,
    this.icon,
    this.height = Constants.buttonDefaultHeight,
  }) : super(style: style);
}
