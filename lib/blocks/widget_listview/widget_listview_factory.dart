import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import 'data/widget_listview_type.dart';
import 'impls/simple_widget_listview.dart';

abstract class WidgetListViewFactory {
  Widget create({
    required List<Widget> widgets,
    required String title,
    CTA? cta,
    int? remainingSeconds,
  });

  factory WidgetListViewFactory({required WidgetListViewType type}) {
    switch (type) {
      case WidgetListViewType.simple:
        return SimpleWidgetListView();
    }
  }
}
