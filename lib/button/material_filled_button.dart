import 'package:flutter/material.dart';
import 'package:fydez_elements/button/button_options.dart';
import 'package:fydez_elements/button/fy_button_factory.dart';

class MaterialFilledButton extends FyButtonFactory {
  @override
  Widget createButton(VoidCallback onPressed, ButtonOptions options) {
    final option = options as FilledButtonOptions;
    return ElevatedButton(onPressed: onPressed, child: Text(option.text));
  }
}
