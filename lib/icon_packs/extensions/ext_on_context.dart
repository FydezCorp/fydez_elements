import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

extension FyIconGetter on BuildContext {
  IconData icon(FyIcons useCase, {String? iconPack}) {
    return FyIcon.icon(this, icon: useCase, iconPack: iconPack);
  }
}
