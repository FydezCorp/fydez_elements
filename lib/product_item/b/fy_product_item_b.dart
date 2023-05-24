import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import '../product_item_factory.dart';
import 'product_card_b.dart';

class FyProductItemB implements ProductItemFactory {
  @override
  Widget build(BuildContext context,
      {required BaseProduct product,
      required Function(BaseProduct product)? onProductTapped,
      required double cornerRadius,
      required ProductImageBackgroundType imageBackgroundType,
      required ProductBadgeLocation badgeLocation,
      required Widget? action,
      required Function(BaseProduct product)? onActionTapped,
      required ProductCardType type}) {
    return ProductCardB(
      product: product,
      cornerRadius: cornerRadius,
      imageBackgroundType: imageBackgroundType,
      badgeLocation: badgeLocation,
      type: type,
      action: action,
      onActionTapped: onActionTapped,
      onProductTapped: onProductTapped,
    );
  }
}
