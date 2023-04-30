import 'package:flutter/material.dart';

import 'button_option.dart';

class FilledButtonOption extends ButtonOption {
  final String text;
  FilledButtonOption({ButtonStyle? style, required this.text})
      : super(style: style);
}