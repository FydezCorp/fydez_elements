import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../data/bullet_model.dart';
import '../help_factory_widget.dart';

class HelpBulletWidget extends HelpFactoryWidget {
  const HelpBulletWidget({super.key, required super.itemData});

  @override
  Widget build(BuildContext context) {
    final bulletItem = itemData as BulletModel;
    return ListTile(
      leading: Icon(
        Icons.fiber_manual_record_rounded,
        size: 14,
        color: context.fyColors.textEightColor,
      ),
      title: HelpFactoryWidget.fromHelpItem(bulletItem.content),
    );
  }
}
