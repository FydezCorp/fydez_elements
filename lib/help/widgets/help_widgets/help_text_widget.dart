import 'package:flutter/material.dart';

import '../../data/text_model.dart';
import '../help_factory_widget.dart';

class HelpTextWidget extends HelpFactoryWidget {
  const HelpTextWidget({super.key, required super.itemData});

  @override
  Widget build(BuildContext context) {
    final textModel = itemData as TextModel;
    final style = textModel.style == 'h3'
        ? Theme.of(context).textTheme.headlineLarge
        : textModel.style == 'h4'
            ? Theme.of(context).textTheme.headlineMedium
            : textModel.style == 'h5'
                ? Theme.of(context).textTheme.titleSmall
                : Theme.of(context).textTheme.titleSmall;
    return Text(
      textModel.content,
      style: style,
    );
  }
}
