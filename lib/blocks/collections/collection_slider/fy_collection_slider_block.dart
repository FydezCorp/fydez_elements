import 'package:flutter/material.dart';

import '../data/collection_item.dart';
import 'collection_slider_factory.dart';
import 'data/collection_slider_type.dart';

class FyCollectionSliderBlock {
  static Widget create({
    required List<CollectionItem> items,
    required bool hasTitle,
    required double cornerRadius,
    required Function(int id) onCollectionTapped,
    required CollectionSliderType type,
  }) {
    return CollectionSliderFactory(type: type).create(
      items: items,
      hasTitle: hasTitle,
      cornerRadius: cornerRadius,
      onCollectionTapped: onCollectionTapped,
    );
  }
}
