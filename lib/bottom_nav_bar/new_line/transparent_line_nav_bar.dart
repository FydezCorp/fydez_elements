import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/base_line_container.dart';

import '../nav_bar_factory.dart';
import '../widgets/nav_bar_transparent_icon.dart';

class NewTransparentLineNavBar extends NewNavBarFactory {
  const NewTransparentLineNavBar({
    super.key,
    required super.items,
    required super.onTap,
    required super.hasTitle,
    required super.cornerRadius,
    required super.currentIndex,
  });
  @override
  Widget build(BuildContext context) {
    return BaseLineContainer(
        cornerRadius: cornerRadius,
        child: BottomNavigationBar(
          items: items
              .map(
                (item) => BottomNavigationBarItem(
                  icon: NavBarTransparentIcon(
                    icon: item.icon,
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
          showSelectedLabels: hasTitle,
          showUnselectedLabels: hasTitle,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
        ));
  }
}
