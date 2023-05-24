// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:fydez_elements/icon_packs/fy_icon.dart';

// import '../icon_pack.dart';
// import '../icon_packs/iconsax_icons.dart';
// import '../icon_packs/material_icons.dart';

// class IconDelegate extends LocalizationsDelegate<FyIcon> {
//   const IconDelegate(this.iconPack);
//   final IconPack iconPack;
//   @override
//   bool isSupported(Locale _) {
//     return true;
//   }

//   @override
//   bool shouldReload(covariant LocalizationsDelegate<FyIcon> old) {
//     return true;
//   }

//   static IconDelegate of(BuildContext context) {
//     return Localizations.of<IconDelegate>(context, IconDelegate)!;
//   }

//   @override
//   Future<FyIcon> load(Locale locale) {
//     switch (iconPack) {
//       case IconPack.material:
//         return SynchronousFuture<FyIcon>(MaterialIcons());
//       case IconPack.iconsax:
//         return SynchronousFuture<FyIcon>(IconsaxIcons());
//       default:
//         return SynchronousFuture<FyIcon>(MaterialIcons());
//     }
//   }
// }
