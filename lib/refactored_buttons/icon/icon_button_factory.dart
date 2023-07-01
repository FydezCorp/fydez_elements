import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import 'impls/material_icon_button.dart';

abstract class IconButtonFactory {
  Widget build({
    required VoidCallback onPressed,
    required ButtonState state,
    required IconData icon,
    Color? backgroundColor,
    Color? foregroundColor,
    double? height,
  });

  factory IconButtonFactory({required IconButtonType type}) {
    switch (type) {
      case IconButtonType.material:
        return MaterialIconButton();
    }
  }
}
