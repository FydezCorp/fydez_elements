import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'dialog/dialog_popup.dart';
import 'modal/modal_popup.dart';

class FyPopup {
  static void showPopup(
    BuildContext context, {
    PopupType? type,
    required String title,
    required String subtitle,
    required PopupBG background,

    /// Only works for type A. Dialogs only have close button.
    required PopupHandle handle,
    required bool hasIcon,
    IconData? icon,
    Widget? trailing,
    double? cornerRadius,
  }) {
    // TODO: Replace these with theme parameter.
    final popupType = type ?? PopupType.modal;
    final popupCornerRadius = cornerRadius ?? 20;
    switch (popupType) {
      case PopupType.modal:
        return ModalPopup().showPopup(
          context,
          title: title,
          subtitle: subtitle,
          background: background,
          handle: handle,
          hasIcon: hasIcon,
          icon: icon,
          trailing: trailing,
          corderRadius: popupCornerRadius,
        );
      case PopupType.dialog:
        return DialogPopup().showPopup(
          context,
          title: title,
          subtitle: subtitle,
          background: background,
          handle: handle,
          hasIcon: hasIcon,
          icon: icon,
          trailing: trailing,
          corderRadius: popupCornerRadius,
        );
    }
  }
}
