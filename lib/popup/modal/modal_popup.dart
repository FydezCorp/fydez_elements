import 'package:flutter/material.dart';
import 'package:fydez_elements/popup/bg_creator.dart';

import '../export.dart';
import '../popup_factory.dart';
import 'modal_container.dart';

class ModalPopup implements PopupFactory {
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
                  child: const SizedBox(
                    height: 50,
                    child: Text('kir'),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
