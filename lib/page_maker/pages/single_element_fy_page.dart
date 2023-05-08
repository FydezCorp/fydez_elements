import 'package:flutter/material.dart';

import '../../fydez_elements.dart';

class SingleElementFyPage implements FyPage {
  /// The element of type (`FyElement`) that will be rendered in the page.
  final FyElement element;

  /// The app bar of the page.
  final PreferredSizeWidget? appBar;

  // Padding of the whole scrollView.
  final EdgeInsets padding;

  final Alignment alignment;

  SingleElementFyPage({
    required this.element,
    this.appBar,
    this.padding = EdgeInsets.zero,
    this.alignment = Alignment.center,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Container(
          alignment: alignment,
          padding: padding,
          child: element.render,
        ),
      ),
    );
  }

  FyPage fromMap(Map<String, dynamic> data) {
    return SingleElementFyPage(
      element: ElementSerializer.getElementFromMap(data),
    );
  }
}
