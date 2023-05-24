import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/popup/popup_factory.dart';

class FyPopup {
  static void showPopup(
    BuildContext context, {
    PopupType? type,
    required String title,
    required String subtitle,
    PopupBG? background,

    /// Only works for type A. Dialogs only have close button.
    PopupHandle? handle,
    required bool hasIcon,
    IconData? icon,
    Widget? trailing,
    double? cornerRadius,
  }) {
    // TODO: Replace these with theme parameter.
    final popupType = type ?? PopupType.modal;
    final popupCornerRadius = cornerRadius ?? 20;
    final popupBackground = background ?? PopupBG.normal;
    final popupHandle = handle ?? PopupHandle.inside;

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
