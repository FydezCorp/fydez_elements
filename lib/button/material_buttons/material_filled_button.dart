import 'package:flutter/material.dart';
import 'package:fydez_elements/button/fy_button_factory.dart';

import '../../constants.dart';
import '../options/filled_button_option.dart';

class MaterialFilledButton extends FyButtonFactory {
  const MaterialFilledButton(
      {super.key, required super.onPressed, required super.options});

  @override
  Widget build(BuildContext context) {
    final option = options as FilledButtonOption;
    return SizedBox(
      height: option.height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: options.style,
        child: option.icon == null
            ? Text(option.text)
            : Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    option.icon,
                    size: Constants.buttonIconSize,
                  ),
                  const SizedBox(width: Constants.buttonIconTextGap),
                  Flexible(child: Text(option.text)),
                ],
              ),
      ),
    );
  }
}
