import 'package:flutter/material.dart';
import 'package:fydez_elements/button/button_loading_widget.dart';
import 'package:fydez_elements/button/fy_button.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../const/constants.dart';
import '../options/filled_button_option.dart';

class MaterialFilledButton extends FyButton {
  const MaterialFilledButton({
    super.key,
    required super.onPressed,
    required super.options,
    super.loading,
  });

  @override
  Widget build(BuildContext context) {
    final option = options as FilledButtonOption;
    return SizedBox(
      height: option.height,
      child: ElevatedButton(
        onPressed: loading == true ? null : onPressed,
        style: options.style,
        child: loading == true
            ? ButtonLoadingWidget(
                color: context.colorScheme.onPrimary,
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
                      Flexible(child: Text(option.text)),
                    ],
                  ),
      ),
    );
  }
}
