import 'package:flutter/material.dart';

import '../help_factory_widget.dart';

class HelpEmptyWidget extends HelpFactoryWidget {
  const HelpEmptyWidget({super.key, required super.itemData});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
