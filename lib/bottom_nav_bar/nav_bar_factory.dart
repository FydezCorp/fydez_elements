import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/new_line/main_title_line_nav_bar.dart';
import 'package:fydez_elements/bottom_nav_bar/new_line/transparent_line_nav_bar.dart';
import 'package:fydez_elements/bottom_nav_bar/new_none/bold_none_nav_bar.dart';
import 'package:fydez_elements/bottom_nav_bar/new_none/main_title_none_nav_bar.dart';
import 'package:fydez_elements/bottom_nav_bar/new_none/transparent_none_nav_bar.dart';
import 'package:fydez_elements/bottom_nav_bar/new_shadow/bold_shadow_nav_bar.dart';

import '../fy_handler.dart';
import 'data/nav_bar_effect.dart';
import 'data/nav_bar_item.dart';
import 'data/nav_bar_style.dart';
import 'line/line_nav_bar.dart';
import 'new_line/bold_line_nav_bar.dart';
import 'new_shadow/main_title_shadow_nav_bar.dart';
import 'new_shadow/transparent_shadow_nav_bar.dart';
import 'none/none_nav_bar.dart';
import 'shadow/shadow_nav_bar.dart';

abstract class NavBarFactory {
  Widget createNavBar({
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

abstract class NewNavBarFactory extends StatelessWidget {
  final List<NavBarItem> items;
  final void Function(int)? onTap;
  final bool hasTitle;
  final double cornerRadius;
  final int currentIndex;

  static Map<String, Map<String, Map<String, NewNavBarFactory>>> _factories({
    required NavBarStyle style,
    required NavBarEffect effect,
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required bool hasTitle,
    required double cornerRadius,
    required int currentIndex,
  }) =>
      {
        'material': {
          'shadow': {
            'bold': NewBoldShadowNavBar(
              items: items,
              onTap: onTap,
              hasTitle: hasTitle,
              cornerRadius: cornerRadius,
              currentIndex: currentIndex,
            ),
            'transparent': NewTransparentShadowNavBar(
              items: items,
              onTap: onTap,
              hasTitle: hasTitle,
              cornerRadius: cornerRadius,
              currentIndex: currentIndex,
            ),
            'main title': NewMainTitleShadowNavBar(
              items: items,
              onTap: onTap,
              hasTitle: hasTitle,
              cornerRadius: cornerRadius,
              currentIndex: currentIndex,
            ),
          },
          'line': {
            'bold': NewBoldLineNavBar(
              items: items,
              onTap: onTap,
              hasTitle: hasTitle,
              cornerRadius: cornerRadius,
              currentIndex: currentIndex,
            ),
            'transparent': NewTransparentLineNavBar(
              items: items,
              onTap: onTap,
              hasTitle: hasTitle,
              cornerRadius: cornerRadius,
              currentIndex: currentIndex,
            ),
            'main title': NewMainTitleLineNavBar(
              items: items,
              onTap: onTap,
              hasTitle: hasTitle,
              cornerRadius: cornerRadius,
              currentIndex: currentIndex,
            ),
          },
          'none': {
            'bold': NewBoldNoneNavBar(
              items: items,
              onTap: onTap,
              hasTitle: hasTitle,
              cornerRadius: cornerRadius,
              currentIndex: currentIndex,
            ),
            'transparent': NewTransparentNoneNavBar(
              items: items,
              onTap: onTap,
              hasTitle: hasTitle,
              cornerRadius: cornerRadius,
              currentIndex: currentIndex,
            ),
            'main title': NewMainTitleNoneNavBar(
              items: items,
              onTap: onTap,
              hasTitle: hasTitle,
              cornerRadius: cornerRadius,
              currentIndex: currentIndex,
            ),
          },
        },
      };
  const NewNavBarFactory({
    super.key,
    required this.items,
    required this.onTap,
    required this.hasTitle,
    required this.cornerRadius,
    required this.currentIndex,
  });

  static NewNavBarFactory create({
    required NavBarStyle style,
    required NavBarEffect effect,
    required List<NavBarItem> items,
    required void Function(int)? onTap,
    required bool hasTitle,
    required double cornerRadius,
    required int currentIndex,
  }) {
    return _factories(
      style: style,
      effect: effect,
      items: items,
      onTap: onTap,
      hasTitle: hasTitle,
      cornerRadius: cornerRadius,
      currentIndex: currentIndex,
    )[FyHandler.designSystem.value]![effect.value]![style.value]!;
  }
}
