import 'package:flutter/material.dart';

import '../data/collection_item.dart';
import 'data/collection_carrousel_type.dart';
import 'impls/normal_collection_carousel.dart';

abstract class CollectionCarouselFactory {
  Widget create({
    required List<CollectionItem> items,
    required bool hasTitle,
    required double cornerRadius,
    required Function(int id) onCollectionTapped,
    required String? title,
  });

  factory CollectionCarouselFactory({required CollectionCarouselType type}) {
    switch (type) {
      case CollectionCarouselType.simple:
        return NormalCollectionCarousel();
    }
  }
}
