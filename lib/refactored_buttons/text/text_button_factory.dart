import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import 'impls/material_text_button.dart';

abstract class TextButtonFactory {
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

  factory TextButtonFactory({required TextButtonType type}) {
    switch (type) {
      case TextButtonType.material:
        return MaterialTextButton();
    }
  }
}
