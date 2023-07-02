import 'package:flutter/widgets.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import 'icon_list.dart';
import 'icon_pack.dart';
import 'icon_packs/iconsax_icons.dart';
import 'icon_packs/material_icons.dart';

class FyIcon implements IconList {
  /// The build context used to access the fyParameters object.
  final BuildContext context;

  /// The icon pack to use, if provided. If `null`, it will read the icon pack
  /// from fyParameters object.
  final IconPack? iconPack;

  FyIcon(this.context, {this.iconPack});

  /// Returns the appropriate icon pack based on the current context and the provided icon pack.
  IconList get getIconPack {
    // Use the provided icon pack, or the default from fyParameters if none is provided.
    final iconPack = this.iconPack ?? context.fyParameters.iconPack;
    switch (iconPack) {
      // Return the Material Icons icon pack.
      case IconPack.material:
        return MaterialIcons();

      // Return the Iconsax Icons icon pack.
      case IconPack.iconsax:
        return IconsaxIcons();
    }
  }

  // Getter methods for the different icons supported by this class.
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

  @override
  IconData get arrowDown => getIconPack.arrowDown;

  @override
  IconData get arrowUp => getIconPack.arrowUp;

  @override
  IconData get search => getIconPack.search;

  @override
  IconData get eyeSlash => getIconPack.eyeSlash;

  /// Returns the appropriate icon based on the provided icon name.
  static IconData fromString(
    BuildContext context, {
    required String? icon,
    IconPack? iconPack,
  }) {
    final finalIconPack = iconPack ?? context.fyParameters.iconPack;
    switch (icon) {
      // TODO: Implement All Icons.
      case 'home':
        return FyIcon(context, iconPack: finalIconPack).home;
      case 'heart':
        return FyIcon(context, iconPack: finalIconPack).heart;
      case 'store':
        return FyIcon(context, iconPack: finalIconPack).store;
      case 'eye':
        return FyIcon(context, iconPack: finalIconPack).eye;
      default:
        return FyIcon(context, iconPack: finalIconPack).home;
    }
  }
}
