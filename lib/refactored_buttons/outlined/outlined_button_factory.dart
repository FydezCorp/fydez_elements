import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import 'impls/material_outlined_button.dart';

abstract class OutlinedButtonFactory {
  Widget build({
    required VoidCallback onPressed,
    required String title,
    required double cornerRadius,
    required ButtonState state,
    IconData? icon,
    Color? backgroundColor,
    Color? foregroundColor,
    double? height,
  });

  factory OutlinedButtonFactory({required OutlinedButtonType type}) {
    switch (type) {
      case OutlinedButtonType.material:
        return MaterialOutlinedButton();
    }
  }
}
