import 'package:flutter/material.dart';
import 'package:fydez_elements/button/fy_button.dart';
import 'package:fydez_elements/button/options/text_button_option.dart';
import 'package:fydez_elements/const/constants.dart';

class MaterialTextButton extends FyButton {
  const MaterialTextButton({
    super.key,
    required super.onPressed,
    required super.options,
  });

  @override
  Widget build(BuildContext context) {
    final option = options as TextButtonOption;
    return SizedBox(
      height: option.height,
      child: TextButton(
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
