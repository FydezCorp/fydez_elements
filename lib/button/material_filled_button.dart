import 'package:flutter/material.dart';
import 'package:fydez_elements/button/fy_button_factory.dart';

import 'options/filled_button_option.dart';

class MaterialFilledButton extends FyButtonFactory {
  const MaterialFilledButton(
      {super.key, required super.onPressed, required super.options});

  @override
  Widget build(BuildContext context) {
    final option = options as FilledButtonOption;
    return ElevatedButton(
      onPressed: onPressed,
      style: option.style,
      child: Text(option.text),
    );
  }
}
