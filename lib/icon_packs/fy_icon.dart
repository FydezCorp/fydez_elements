import 'package:flutter/widgets.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../const/logger.dart';
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

  @override
  IconData get addToCart => getIconPack.addToCart;

  @override
  IconData get appBarBack => getIconPack.appBarBack;

  @override
  IconData get dropdownExpand => getIconPack.dropdownExpand;

  @override
  IconData get dropdownShrink => getIconPack.dropdownShrink;

  @override
  IconData get expansionTileExpand => getIconPack.expansionTileExpand;

  @override
  IconData get expansionTileShrink => getIconPack.expansionTileShrink;

  @override
  IconData get hidePassword => getIconPack.hidePassword;

  @override
  IconData get listTileSeeMore => getIconPack.listTileSeeMore;

  @override
  IconData get navBarCart => getIconPack.navBarCart;

  @override
  IconData get navBarCartActive => getIconPack.navBarCartActive;

  @override
  IconData get navBarFavorites => getIconPack.navBarFavorites;

  @override
  IconData get navBarFavoritesActive => getIconPack.navBarFavoritesActive;

  @override
  IconData get navBarHome => getIconPack.navBarHome;

  @override
  IconData get navBarHomeActive => getIconPack.navBarHomeActive;

  @override
  IconData get navBarProfile => getIconPack.navBarProfile;

  @override
  IconData get navBarProfileActive => getIconPack.navBarProfileActive;

  @override
  IconData get navBarStore => getIconPack.navBarStore;

  @override
  IconData get navBarStoreActive => getIconPack.navBarStoreActive;

  @override
  IconData get popUpClose => getIconPack.popUpClose;

  @override
  IconData get profileAccountSettings => getIconPack.profileAccountSettings;

  @override
  IconData get profileAddresses => getIconPack.profileAddresses;

  @override
  IconData get profileContact => getIconPack.profileContact;

  @override
  IconData get profileHelp => getIconPack.profileHelp;

  @override
  IconData get profileLogOut => getIconPack.profileLogOut;

  @override
  IconData get profileNotifications => getIconPack.profileNotifications;

  @override
  IconData get profileOrderDetails => getIconPack.profileOrderDetails;

  @override
  IconData get profilePassword => getIconPack.profilePassword;

  @override
  IconData get showPassword => getIconPack.showPassword;

  @override
  IconData get changePassword => getIconPack.changePassword;

  @override
  IconData get email => getIconPack.email;

  @override
  IconData get horizontalMore => getIconPack.horizontalMore;

  @override
  IconData get location => getIconPack.location;

  @override
  IconData get myLocation => getIconPack.myLocation;

  @override
  IconData get phone => getIconPack.phone;

  @override
  IconData get sms => getIconPack.sms;

  @override
  IconData get zoomIn => getIconPack.zoomIn;

  @override
  IconData get zoomOut => getIconPack.zoomOut;

  /// Returns the appropriate icon based on the provided icon name.
  static IconData fromString(
    BuildContext context, {
    required String? icon,
    IconPack? iconPack,
  }) {
    final finalIconPack = iconPack ?? context.fyParameters.iconPack;
    switch (icon) {
      case 'home':
        return FyIcon(context, iconPack: finalIconPack).home;
      case 'heart':
        return FyIcon(context, iconPack: finalIconPack).heart;
      case 'store':
        return FyIcon(context, iconPack: finalIconPack).store;
      case 'eye':
        return FyIcon(context, iconPack: finalIconPack).eye;
      case 'showPassword':
        return FyIcon(context, iconPack: finalIconPack).showPassword;
      case 'hidePassword':
        return FyIcon(context, iconPack: finalIconPack).hidePassword;
      case 'appBarBack':
        return FyIcon(context, iconPack: finalIconPack).appBarBack;
      case 'dropdownExpand':
        return FyIcon(context, iconPack: finalIconPack).dropdownExpand;
      case 'dropdownShrink':
        return FyIcon(context, iconPack: finalIconPack).dropdownShrink;
      case 'popUpClose':
        return FyIcon(context, iconPack: finalIconPack).popUpClose;
      case 'expansionTileExpand':
        return FyIcon(context, iconPack: finalIconPack).expansionTileExpand;
      case 'expansionTileShrink':
        return FyIcon(context, iconPack: finalIconPack).expansionTileShrink;
      case 'listTileSeeMore':
        return FyIcon(context, iconPack: finalIconPack).listTileSeeMore;
      case 'navBarHome':
        return FyIcon(context, iconPack: finalIconPack).navBarHome;
      case 'navBarHomeActive':
        return FyIcon(context, iconPack: finalIconPack).navBarHomeActive;
      case 'navBarStore':
        return FyIcon(context, iconPack: finalIconPack).navBarStore;
      case 'navBarStoreActive':
        return FyIcon(context, iconPack: finalIconPack).navBarStoreActive;
      case 'navBarFavorites':
        return FyIcon(context, iconPack: finalIconPack).navBarFavorites;
      case 'navBarFavoritesActive':
        return FyIcon(context, iconPack: finalIconPack).navBarFavoritesActive;
      case 'navBarCart':
        return FyIcon(context, iconPack: finalIconPack).navBarCart;
      case 'navBarCartActive':
        return FyIcon(context, iconPack: finalIconPack).navBarCartActive;
      case 'navBarProfile':
        return FyIcon(context, iconPack: finalIconPack).navBarProfile;
      case 'navBarProfileActive':
        return FyIcon(context, iconPack: finalIconPack).navBarProfileActive;
      case 'addToCart':
        return FyIcon(context, iconPack: finalIconPack).addToCart;
      case 'profileAccountSettings':
        return FyIcon(context, iconPack: finalIconPack).profileAccountSettings;
      case 'profilePassword':
        return FyIcon(context, iconPack: finalIconPack).profilePassword;
      case 'profileAddresses':
        return FyIcon(context, iconPack: finalIconPack).profileAddresses;
      case 'profileOrderDetails':
        return FyIcon(context, iconPack: finalIconPack).profileOrderDetails;
      case 'profileNotifications':
        return FyIcon(context, iconPack: finalIconPack).profileNotifications;
      case 'profileContact':
        return FyIcon(context, iconPack: finalIconPack).profileContact;
      case 'profileHelp':
        return FyIcon(context, iconPack: finalIconPack).profileHelp;
      case 'profileLogOut':
        return FyIcon(context, iconPack: finalIconPack).profileLogOut;
      case 'changePassword':
        return FyIcon(context, iconPack: finalIconPack).changePassword;
      case 'email':
        return FyIcon(context, iconPack: finalIconPack).email;
      case 'horizontalMore':
        return FyIcon(context, iconPack: finalIconPack).horizontalMore;
      case 'location':
        return FyIcon(context, iconPack: finalIconPack).location;
      case 'myLocation':
        return FyIcon(context, iconPack: finalIconPack).myLocation;
      case 'phone':
        return FyIcon(context, iconPack: finalIconPack).phone;
      case 'sms':
        return FyIcon(context, iconPack: finalIconPack).sms;
      case 'zoomIn':
        return FyIcon(context, iconPack: finalIconPack).zoomIn;
      case 'zoomOut':
        return FyIcon(context, iconPack: finalIconPack).zoomOut;
      default:
        SerializationErrorLogger.showConfigError(
          value: icon,
          object: FyIcon,
        );
        return FyIcon(context, iconPack: finalIconPack).home;
    }
  }
}
