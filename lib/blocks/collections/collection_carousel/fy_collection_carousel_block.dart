import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../data/collection_item.dart';
import 'collection_carousel_factory.dart';
import 'data/collection_carrousel_type.dart';

class FyCollectionCarouselBlock {
  static Widget create(
    BuildContext context, {
    required List<CollectionItem> items,
    required CollectionCarouselType type,
    required bool hasTitle,
    double? cornerRadius,
    required Function(int id) onCollectionTapped,
    String? title,
  }) {
    final finalCornerRadius =
        cornerRadius ?? context.fySpacing.cornerRadius.toDouble();
    return CollectionCarouselFactory(type: type).create(
      items: items,
      hasTitle: hasTitle,
      cornerRadius: finalCornerRadius,
      onCollectionTapped: onCollectionTapped,
      title: title,
    );
  }
}
