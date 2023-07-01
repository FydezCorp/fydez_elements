import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import 'impls/material_filled_button.dart';

abstract class FilledButtonFactory {
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

  factory FilledButtonFactory({required FilledButtonType type}) {
    switch (type) {
      case FilledButtonType.material:
        return MaterialFilledButton();
    }
  }
}
