import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../data/help_factory_item_data.dart';
import 'help_factory_widget.dart';

class HelpAnswerWidget extends StatelessWidget {
  final List<HelpFactoryItemData> items;
  const HelpAnswerWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return HelpFactoryWidget.fromHelpItem(
          items[index],
        );
      },
      separatorBuilder: (_, __) {
        return const Gap(12);
      },
      itemCount: items.length,
      shrinkWrap: true,
    );
  }
}
