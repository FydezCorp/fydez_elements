import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/collections/collection_slider/data/collection_slider_type.dart';

import '../data/collection_item.dart';
import 'impls/normal_collection_slider.dart';

abstract class CollectionSliderFactory {
  Widget create({
    required List<CollectionItem> items,
    required bool hasTitle,
    required double cornerRadius,
    required Function(int id) onCollectionTapped,
  });

  factory CollectionSliderFactory({required CollectionSliderType type}) {
    switch (type) {
      case CollectionSliderType.normal:
        return NormalCollectionSlider();
    }
  }
}
