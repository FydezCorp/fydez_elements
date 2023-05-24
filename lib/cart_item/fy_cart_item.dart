import 'package:flutter/material.dart';

import 'cart_item_factory.dart';
import 'data/cart_item_type.dart';

class FyCartItem {
  static Widget create(
    BuildContext context, {
    required VoidCallback onDelete,
    required VoidCallback onAdd,
    required VoidCallback onFraction,
    required String productImage,
    required String productTitle,
    required double productPrice,
    required String categoryName,
    required int count,
    CartItemType? type,
    Key? key,
  }) {
    final finalType = type ?? CartItemType.normal;
    return CartItemFactory(type: finalType).build(
      onDelete: onDelete,
      onAdd: onAdd,
      onFraction: onFraction,
      productImage: productImage,
      productTitle: productTitle,
      productPrice: productPrice,
      categoryName: categoryName,
      count: count,
      key: key,
    );
  }
}
