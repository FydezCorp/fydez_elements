import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import 'data/product_listview_type.dart';
import 'impls/simple_product_listview.dart';

abstract class ProductListViewFactory {
  Widget create({
    required List<BaseProduct> products,
    required String title,
     CTA? cta,
    required Function(BaseProduct product) onProductTapped,
    int? remainingSeconds,
  });

  factory ProductListViewFactory({required ProductListViewType type}) {
    switch (type) {
      case ProductListViewType.simple:
        return SimpleProductListView();
    }
  }
}

