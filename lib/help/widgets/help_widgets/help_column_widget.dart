import 'package:flutter/material.dart';

import '../../data/column_model.dart';
import '../help_factory_widget.dart';

class HelpColumnWidget extends HelpFactoryWidget {
  const HelpColumnWidget({super.key, required super.itemData});

  @override
  Widget build(BuildContext context) {
    final columns = itemData as ColumnModel;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columns.items
          .map((e) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: HelpFactoryWidget.fromHelpItem(e),
              ))
          .toList(),
    );
  }
}
