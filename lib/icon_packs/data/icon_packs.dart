import 'package:flutter/material.dart';
import 'package:fydez_elements/icon_packs/data/icon_usecases.dart';
import 'package:fydez_elements/icon_packs/packs/iconsax_icons.dart';
import 'package:fydez_elements/icon_packs/packs/material_icons.dart';


class IconPack {
  final String name;
  final Map<IconUseCase, IconData> pack;

  IconPack({
    required this.name,
    required this.pack,
  });
}

List<IconPack> iconPacks = [
  IconPack(name: 'material', pack: materialIcons),
  IconPack(name: 'iconsax', pack: iconsaxIcons),
];
