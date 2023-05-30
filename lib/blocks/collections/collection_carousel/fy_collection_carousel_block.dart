import 'package:flutter/material.dart';

import '../data/collection_item.dart';
import 'collection_carousel_factory.dart';
import 'data/collection_carrousel_type.dart';

class FyCollectionCarouselBlock {
  static Widget create({
    required List<CollectionItem> items,
    required CollectionCarouselType type,
    required bool hasTitle,
    required double cornerRadius,
  }) {
    return CollectionCarouselFactory(type: type).create(
      items: items,
      hasTitle: hasTitle,
      cornerRadius: cornerRadius,
    );
  }
}
