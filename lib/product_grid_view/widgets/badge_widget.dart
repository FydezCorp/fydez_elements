import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

class BadgeWidget extends StatelessWidget {
  const BadgeWidget({
    Key? key,
    required this.badge,
    required this.badgeLocation,
  }) : super(key: key);

  final BadgeElement badge;
  final BadgeLocation badgeLocation;
  @override
  Widget build(BuildContext context) {
    ShapeBorder shape() {
      if (badgeLocation == BadgeLocation.bottomRound ||
          badgeLocation == BadgeLocation.topRound) {
        return const StadiumBorder();
      } else {
        return const RoundedRectangleBorder(borderRadius: BorderRadius.zero);
      }
    }

    return Container(
        decoration: ShapeDecoration(
          color: badge.color,
          shape: shape(),
        ),
        padding: const EdgeInsets.all(5.0),
        child: Text(
          badge.text,
          style: context.textTheme.labelSmall!.copyWith(
            color: badge.textColor,
          ),
        ));
  }
}
