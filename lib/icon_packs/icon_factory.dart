import 'package:flutter/cupertino.dart';
import 'package:fydez_elements/icon_packs/data/icon_usecases.dart';
import 'package:fydez_elements/icon_packs/data/icon_packs.dart';

class IconFactory {
  IconData getIcon({
    required String iconPack,
    required IconUseCase iconUseCase,
  }) {
    final pack = iconPacks.where((element) => element.name == iconPack).first;
    return pack.pack[iconUseCase]!;
  }
}
