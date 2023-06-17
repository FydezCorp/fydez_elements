import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../data/link_model.dart';
import '../help_factory_widget.dart';

class HelpLinkWidget extends HelpFactoryWidget {
  const HelpLinkWidget({super.key, required super.itemData});

  @override
  Widget build(BuildContext context) {
    final item = itemData as LinkModel;
    final style = item.style == 'h3'
        ? Theme.of(context).textTheme.headlineLarge
        : item.style == 'h4'
            ? Theme.of(context).textTheme.headlineMedium
            : item.style == 'h5'
                ? Theme.of(context).textTheme.titleSmall
                : Theme.of(context).textTheme.titleSmall;
    return WidgetSpan(
      child: GestureDetector(
          onTap: () {
            // TODO: Make it launch a URL.
            debugPrint(item.href);
          },
          child: Text(
            item.content,
            style: style!.copyWith(color: context.colorScheme.secondary),
          )),
    ).child;
  }
}
