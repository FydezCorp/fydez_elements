import 'package:flutter/material.dart';

import 'data/cart_item_type.dart';
import 'impls/normal_cart_item.dart';

abstract class CartItemFactory {
  Widget build({
    Key? key,
    required VoidCallback onDelete,
    required VoidCallback onAdd,
    required VoidCallback onFraction,
    required String productImage,
    required String productTitle,
    required double productPrice,
    required String categoryName,
    required int count,
  });

  factory CartItemFactory({required CartItemType type}) {
    return NormalCartItem();
  }
}
