import 'package:flutter/material.dart';

import 'data/nav_bar_effect.dart';
import 'data/nav_bar_item.dart';
import 'data/nav_bar_style.dart';
import 'line/line_nav_bar.dart';
import 'none/none_nav_bar.dart';
import 'shadow/shadow_nav_bar.dart';

abstract class NavBarFactory {
  Widget build({
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required bool hasTitle,
    required double cornerRadius,
    required int currentIndex,
    required NavBarStyle style,
  });

  factory NavBarFactory({
    required NavBarEffect effect,
  }) {
    switch (effect) {
      case NavBarEffect.shadow:
        return ShadowNavBar();
      case NavBarEffect.line:
        return LineNavBar();
      case NavBarEffect.none:
        return NoneNavBar();
    }
  }
}



// class LineNavBar implements NavBarFactory {
//   @override
//   Widget build({
//     required List<NavBarItem> items,
//     required void Function(int)? onTap,
//     required bool hasTitle,
//     required double cornerRadius,
//     required int currentIndex,
//     required NavBarStyle style,
//   }) {
//     return Container(
//       margin: const EdgeInsets.all(12.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(cornerRadius),
//         border: Border.all(
//           color: const Color(0xffCCCCCC),
//           width: 0.5,
//         ),
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(cornerRadius),
//         child: BottomNavigationBar(
//           items: items
//               .map(
//                 (item) => BottomNavigationBarItem(
//                   icon: Icon(item.icon),
//                   label: item.label,
//                 ),
//               )
//               .toList(),
//           selectedItemColor: const Color(0xff1A1A1A),
//           unselectedItemColor: const Color(0xff949494),
//           onTap: onTap,
//           currentIndex: currentIndex,
//           type: BottomNavigationBarType.fixed,
//         ),
//       ),
//     );
//   }
// }

// class NoneNavBar implements NavBarFactory {
//   @override
//   Widget build({
//     required List<NavBarItem> items,
//     required void Function(int)? onTap,
//     required bool hasTitle,
//     required double cornerRadius,
//     required int currentIndex,
//     required NavBarStyle style,
//   }) {
//     return Container(
//       margin: const EdgeInsets.all(12.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(cornerRadius),
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(cornerRadius),
//         child: BottomNavigationBar(
//           items: items
//               .map(
//                 (item) => BottomNavigationBarItem(
//                   icon: Icon(item.icon),
//                   label: item.label,
//                 ),
//               )
//               .toList(),
//           selectedItemColor: const Color(0xff1A1A1A),
//           unselectedItemColor: const Color(0xff949494),
//           onTap: onTap,
//           currentIndex: currentIndex,
//           type: BottomNavigationBarType.fixed,
//         ),
//       ),
//     );
//   }
// }
