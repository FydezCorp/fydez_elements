import 'package:flutter/material.dart';

import '../fy_element.dart';
import '../fy_page.dart';

class NormalFyPage implements FyPage {
  /// List of elements of type (`FyElement`) that will be rendered in the page.
  final List<FyElement> elements;

  /// The app bar of the page.
  final PreferredSizeWidget? appBar;

  /// The scroll physics of the page.
  final ScrollPhysics? physics;

  // Padding of the whole scrollView.
  final EdgeInsets padding;

  /// Padding of each element inside the list. This padding applies to all items
  /// in the list.
  final EdgeInsets itemPadding;

  NormalFyPage({
    required this.elements,
    this.appBar,
    this.physics,
    this.padding = EdgeInsets.zero,
    this.itemPadding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SingleChildScrollView(
        physics: physics,
        child: Padding(
          padding: padding,
          child: ListView.builder(
            itemCount: elements.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: itemPadding,
                child: elements[index].render,
              );
            },
          ),
        ),
      ),
    );
  }
}
