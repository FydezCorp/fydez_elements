import 'package:flutter/material.dart';
import 'package:fydez_elements/popup/dialog/dialog_popup.dart';
import 'package:fydez_elements/popup/modal/modal_popup.dart';

import 'data/popup_bg.dart';
import 'data/popup_handle.dart';
import 'data/popup_type.dart';

abstract class PopupFactory {
  void showPopup(
    BuildContext context, {
    required String title,
    required String subtitle,
    required PopupBG background,
    required PopupHandle handle,
    required bool hasIcon,
    IconData? icon,
    required double corderRadius,

    /// Usually a CTA button.
    Widget? trailing,
  });

  factory PopupFactory(PopupType type) {
    switch (type) {
      case PopupType.modal:
        return ModalPopup();
      case PopupType.dialog:
        return DialogPopup();
    }
  }
}
