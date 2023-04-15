import 'package:flutter/material.dart';

import 'data/popup_bg.dart';
import 'data/popup_handle.dart';

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
}