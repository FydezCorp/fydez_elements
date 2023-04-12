import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

// enum FyIconsEnum {
//   home,
//   login,
//   logout,
//   eye,
//   user,
//   heart,
//   store,
// }

abstract class FyIcons {
  IconData get home;
  IconData get login;
  // IconData get logout;
  // IconData get eye;
  // IconData get user;
  // IconData get heart;
  // IconData get store;
}

class MaterialIcons extends FyIcons {
  @override
  IconData get eye => Icons.remove_red_eye;

  @override
  IconData get heart => Icons.favorite;

  @override
  IconData get home => Icons.home;

  @override
  IconData get login => Icons.login;

  @override
  IconData get logout => Icons.logout;

  @override
  IconData get store => Icons.store;

  @override
  IconData get user => Icons.person;
}

class IconsaxIcons extends FyIcons {
  @override
  IconData get eye => Iconsax.eye;

  @override
  IconData get heart => Iconsax.heart;

  @override
  IconData get home => Iconsax.home;

  @override
  IconData get login => Iconsax.login;

  @override
  IconData get logout => Iconsax.logout;

  @override
  IconData get store => Iconsax.shop;

  @override
  IconData get user => Iconsax.user;
}
