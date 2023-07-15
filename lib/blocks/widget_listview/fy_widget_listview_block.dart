import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import 'widget_listview_factory.dart';

class FyWidgetListViewBlock {
  static Widget create({
    required List<Widget> widgets,
    required String title,
    CTA? cta,
    int? remainingSeconds,
    required WidgetListViewType type,
  }) {
    return WidgetListViewFactory(type: type).create(
      remainingSeconds: remainingSeconds,
      widgets: widgets,
      title: title,
      cta: cta,
    );
  }
}
