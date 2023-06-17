import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/product_listview/product_listview_factory.dart';

import '../../fydez_elements.dart';

class FyProductListViewBlock {
  static Widget create({
    required List<BaseProduct> products,
    required String title,
    CTA? cta,
    required Function(BaseProduct product) onProductTapped,
    int? remainingSeconds,
    required ProductListViewType type,
  }) {
    return ProductListViewFactory(type: type).create(
      remainingSeconds: remainingSeconds,
      onProductTapped: onProductTapped,
      products: products,
      title: title,
      cta: cta,
    );
  }
}
