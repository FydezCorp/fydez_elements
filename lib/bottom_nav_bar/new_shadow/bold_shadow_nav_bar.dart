import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/nav_bar_factory.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/base_shadow_container.dart';

import '../widgets/nav_bar_bold_icon.dart';

class NewBoldShadowNavBar extends NewNavBarFactory {
  const NewBoldShadowNavBar({
    super.key,
    required super.items,
    required super.onTap,
    required super.hasTitle,
    required super.cornerRadius,
    required super.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return BaseShadowContainer(
        cornerRadius: cornerRadius,
        child: BottomNavigationBar(
          items: items
              .map(
                (item) => BottomNavigationBarItem(
                  icon: NavBarBoldIcon(
                    item: item,
                    isSelected: currentIndex == items.indexOf(item),
                  ),
                  label: item.label,
                ),
              )
              .toList(),
          // TODO: Read these colors from theme.
          selectedItemColor: const Color(0xff1A1A1A),
          unselectedItemColor: const Color(0xff949494),
          onTap: onTap,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed, showSelectedLabels: hasTitle,
          showUnselectedLabels: hasTitle,
          elevation: 0,
        ));
  }
}
