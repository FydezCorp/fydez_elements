import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/icon_packs/data/icon_usecases.dart';
import 'package:fydez_elements/icon_packs/icon_factory.dart';

export 'extensions/ext_on_context.dart';

class FyIcon {
  static IconData icon(
    BuildContext context, {
    required IconUseCase icon,
    String? iconPack,
  }) {
    return IconFactory().getIcon(
      // For testing and demoing purposes, we can set iconPack manually.
      iconPack: iconPack ?? context.fyParameters.iconPack,
      iconUseCase: icon,
    );
  }
}
