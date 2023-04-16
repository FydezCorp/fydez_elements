import 'package:flutter/material.dart';
import 'package:fydez_elements/icon_packs/fy_icon.dart';

class MaterialIcons implements FyIcon {
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
