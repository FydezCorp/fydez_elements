import 'package:flutter/material.dart';
import 'package:fydez_elements/popup/bg_creator.dart';

import '../data/popup_bg.dart';
import '../data/popup_handle.dart';
import '../popup_factory.dart';
import 'dialog_container.dart';

class DialogPopup implements PopupFactory {
  @override
  void showPopup(BuildContext context,
      {required String title,
      required String subtitle,
      required PopupBG background,
      required PopupHandle handle,
      double corderRadius = 20,
      required bool hasIcon,
      IconData? icon,
      Widget? trailing}) {
    showDialog(
        context: context,
        builder: (context) {
          return BGCreator(
            bg: background,
            child: DialogContainer(
              cornerRadius: corderRadius,
              child: Container(),
            ),
          );
        });
  }
}
