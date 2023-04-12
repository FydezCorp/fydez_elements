import 'package:flutter/cupertino.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/icon_packs/data/fy_icons.dart';
import 'package:fydez_elements/icon_packs/data/icon_packs.dart';

class IconFactory implements FyIcons {
  final BuildContext context;
  final IconPacks? iconPack;

  IconFactory(this.context, {this.iconPack});
  // IconData getIcon({
  //   required String iconPack,
  //   required FyIcons iconUseCase,
  // }) {
  //   final pack = iconPacks.where((element) => element.name == iconPack).first;
  //   return pack.pack[iconUseCase]!;
  // }
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
}
