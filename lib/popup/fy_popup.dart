import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/popup/popup_factory.dart';

class FyPopup {
  static void showPopup(
    BuildContext context, {
    PopupType? type,

    /// Only works for type A. Dialogs only have close button.
    PopupHandle? handle,
    PopupBG? background,
    double? cornerRadius,
    required String title,
    required String subtitle,
    required bool hasIcon,
    IconData? icon,
    Widget? trailing,
  }) {
    final popupType = type ?? context.fyParameters.popupConfiguration.type;
    final popupCornerRadius =
        cornerRadius ?? context.fyParameters.popupConfiguration.cornerRadius;
    final popupBackground =
        background ?? context.fyParameters.popupConfiguration.background;
    final popupHandle =
        handle ?? context.fyParameters.popupConfiguration.handle;

    return PopupFactory(popupType).showPopup(
      context,
      title: title,
      subtitle: subtitle,
      background: popupBackground,
      handle: popupHandle,
      hasIcon: hasIcon,
      corderRadius: popupCornerRadius,
      icon: icon,
      trailing: trailing,
    );
  }
}
