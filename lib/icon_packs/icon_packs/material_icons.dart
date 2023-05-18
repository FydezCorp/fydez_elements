import 'package:flutter/material.dart';
import 'package:fydez_elements/icon_packs/fy_icons.dart';

class MaterialIcons implements FyIcons {
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

  @override
  IconData get arrowDown => Icons.keyboard_arrow_down_rounded;

  @override
  IconData get arrowUp => Icons.keyboard_arrow_up_rounded;
}
