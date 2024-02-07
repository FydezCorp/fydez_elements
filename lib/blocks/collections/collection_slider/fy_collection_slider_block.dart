import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../data/collection_item.dart';
import 'collection_slider_factory.dart';
import 'data/collection_slider_type.dart';

class FyCollectionSliderBlock {
  static Widget create(
    BuildContext context, {
    required List<CollectionItem> items,
    required bool hasTitle,
    double? cornerRadius,
    required Function(int id) onCollectionTapped,
    required CollectionSliderType type,
  }) {
    final finalCornerRadius =
        cornerRadius ?? context.fySpacing.cornerRadius.toDouble();
    return CollectionSliderFactory(type: type).create(
      items: items,
      hasTitle: hasTitle,
      cornerRadius: finalCornerRadius,
      onCollectionTapped: onCollectionTapped,
    );
  }
}
