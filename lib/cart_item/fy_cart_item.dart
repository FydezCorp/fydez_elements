import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

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
    required String subtitle,
    required int count,
    CartItemType? type,
    Key? key,
  }) {
    final finalType = type ?? context.fyParameters.cartItemType;
    return CartItemFactory(type: finalType).build(
      onDelete: onDelete,
      onAdd: onAdd,
      onFraction: onFraction,
      productImage: productImage,
      productTitle: productTitle,
      productPrice: productPrice,
      subtitle: subtitle,
      count: count,
      key: key,
    );
  }
}
