import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/nav_bar_factory.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/base_none_container.dart';
import 'package:fydez_elements/bottom_nav_bar/widgets/nav_bar_transparent_icon.dart';

class NewTransparentNoneNavBar extends NewNavBarFactory {
  const NewTransparentNoneNavBar({
    super.key,
    required super.items,
    required super.onTap,
    required super.hasTitle,
    required super.cornerRadius,
    required super.currentIndex,
  });
  @override
  Widget build(BuildContext context) {
    return BaseNoneContainer(
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
          currentIndex: currentIndex,
          showSelectedLabels: hasTitle,
          showUnselectedLabels: hasTitle,
          type: BottomNavigationBarType.fixed,
        ));
  }
}
