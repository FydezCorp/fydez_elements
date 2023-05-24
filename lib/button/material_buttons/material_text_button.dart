import 'package:flutter/material.dart';
import 'package:fydez_elements/button/fy_button.dart';
import 'package:fydez_elements/button/options/text_button_option.dart';
import 'package:fydez_elements/const/constants.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../button_loading_widget.dart';

class MaterialTextButton extends FyButton {
  const MaterialTextButton({
    super.key,
    required super.onPressed,
    required super.options,
    super.loading,
  });

  @override
  Widget build(BuildContext context) {
    final option = options as TextButtonOption;
    return SizedBox(
      height: option.height,
      child: TextButton(
        onPressed: loading == true ? null : onPressed,
        style: options.style,
        child: loading == true
            ? ButtonLoadingWidget(
                color: context.fyColors.textThreeColor,
                size: 10,
              )
            : option.icon == null
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
