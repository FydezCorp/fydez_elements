import 'package:flutter/cupertino.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import 'export.dart';
import 'icon_packs/iconsax_icons.dart';
import 'icon_packs/material_icons.dart';

class FyIcon implements FyIcons {
  final BuildContext context;
  final IconPacks? iconPack;

  FyIcon(this.context, {this.iconPack});

  FyIcons get getIconPack {
    final iconPack = this.iconPack ?? context.fyParameters.iconPack;
    switch (iconPack) {
      case IconPacks.material:
        return MaterialIcons();

      case IconPacks.iconsax:
        return IconsaxIcons();
    }
  }

  @override
  IconData get home => getIconPack.home;

  @override
  IconData get login => getIconPack.login;

  @override
  IconData get eye => getIconPack.eye;

  @override
  IconData get heart => getIconPack.heart;

  @override
  IconData get logout => getIconPack.logout;

  @override
  IconData get store => getIconPack.store;

  @override
  IconData get user => getIconPack.user;
}
