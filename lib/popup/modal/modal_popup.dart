import 'package:flutter/material.dart';
import 'package:fydez_elements/popup/bg_creator.dart';

import '../export.dart';
import '../popup_factory.dart';
import '../widgets/popup_header.dart';
import '../widgets/popup_icon.dart';
import 'modal_container.dart';

class ModalPopup implements PopupFactory {
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
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        enableDrag: true,
        isScrollControlled: true,
        builder: (context) {
          return BGCreator(
            bg: background,
            child: Wrap(
              children: [
                ModalContainer(
                  handle: handle,
                  cornerRadius: corderRadius,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
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
              ],
            ),
          );
        });
  }
}


