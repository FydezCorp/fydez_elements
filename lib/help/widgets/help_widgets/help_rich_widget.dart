import 'package:flutter/material.dart';

import '../../data/rich_model.dart';
import '../help_factory_widget.dart';

class HelpRichWidget extends HelpFactoryWidget {
  const HelpRichWidget({super.key, required super.itemData});

  @override
  Widget build(BuildContext context) {
    final item = itemData as RichModel;
    final style = item.style == 'h3'
        ? Theme.of(context).textTheme.headlineLarge
        : item.style == 'h4'
            ? Theme.of(context).textTheme.headlineMedium
            : item.style == 'h5'
                ? Theme.of(context).textTheme.titleSmall
                : Theme.of(context).textTheme.titleSmall;
    return RichText(
      text: TextSpan(
        
        style: style,
        
        children: item.items
            .map((e) => WidgetSpan(child: HelpFactoryWidget.fromHelpItem(e)))
            .toList(),
      ),
    );
  }
}
