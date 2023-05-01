import 'package:flutter/material.dart';
import 'package:fydez_elements/button/fy_button.dart';
import 'package:fydez_elements/button/options/outlined_button_option.dart';
import 'package:fydez_elements/constants.dart';

class MaterialOutlinedButton extends FyButton {
  const MaterialOutlinedButton({
    super.key,
    required super.onPressed,
    required super.options,
  });

  @override
  Widget build(BuildContext context) {
    final option = options as OutlinedButtonOption;
    return SizedBox(
      height: option.height,
      child: OutlinedButton(
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
                  Text(option.text),
                ],
              ),
      ),
    );
  }
}
