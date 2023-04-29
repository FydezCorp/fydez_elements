
import 'package:flutter/material.dart';

import 'widgets/fy_elevated_button.dart';
import 'widgets/fy_icon_button.dart';
import 'widgets/fy_outlined_button.dart';
import 'widgets/fy_text_button.dart';

class FyButton {
  static Widget filled(
    BuildContext context, {
    required String title,
    required VoidCallback onPressed,
    IconData? icon,
    double height = 50,
  }) {
    return FyElevatedButton(
      title: title,
      onPressed: onPressed,
      height: height,
      icon: icon,
    );
  }

  static Widget outlined(
    BuildContext context, {
    required String title,
    required VoidCallback onPressed,
    IconData? icon,
    double height = 50,
  }) {
    return FyOutlinedButton(
      title: title,
      onPressed: onPressed,
      height: height,
      icon: icon,
    );
  }

  static Widget text(
    BuildContext context, {
    required String title,
    required VoidCallback onPressed,
    IconData? icon,
    double height = 35,
  }) {
    return FyTextButton(
      title: title,
      onPressed: onPressed,
      height: height,
      icon: icon,
    );
  }

  static Widget icon({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return FyIconButton(
      icon: icon,
      onPressed: onPressed,
    );
  }
}
