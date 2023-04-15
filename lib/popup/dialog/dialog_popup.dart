import 'package:flutter/material.dart';
import 'package:fydez_elements/popup/bg_creator.dart';

import '../data/popup_bg.dart';
import '../data/popup_handle.dart';
import '../popup_factory.dart';
import '../widgets/popup_header.dart';
import '../widgets/popup_icon.dart';
import 'dialog_container.dart';

class DialogPopup implements PopupFactory {
  @override
  void showPopup(BuildContext context,
      {required String title,
      required String subtitle,
      required PopupBG background,
      required PopupHandle handle,
      required double corderRadius,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  PopupHeader(
                    title: title,
                    subtitle: subtitle,
                  ),
                  PopupIcon(
                    icon: icon,
                    hasIcon: hasIcon,
                  ),
                  trailing ?? Container(),
                ],
              ),
            ),
          );
        });
  }
}
