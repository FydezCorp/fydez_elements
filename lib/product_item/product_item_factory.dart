import 'package:flutter/cupertino.dart';

import '../fydez_elements.dart';
import 'a/fy_product_item_a.dart';
import 'b/fy_product_item_b.dart';

abstract class ProductItemFactory {
  Widget build(
    BuildContext context, {
    required BaseProduct product,
    required Function(BaseProduct product)? onProductTapped,
    required double cornerRadius,
    required ProductImageBackgroundType imageBackgroundType,
    required ProductBadgeLocation badgeLocation,
    required Widget? action,
    required Function(BaseProduct product)? onActionTapped,
    required ProductCardType type,
  });
  factory ProductItemFactory({required ProductCardType type}) {
    switch (type) {
      case ProductCardType.A:
        return FyProductItemA();
      case ProductCardType.B:
        return FyProductItemB();
    }
  }
}
