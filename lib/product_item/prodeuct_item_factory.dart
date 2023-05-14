import 'package:flutter/cupertino.dart';

import '../fydez_elements.dart';
import 'a/product_card_a.dart';
import 'b/product_card_b.dart';
import 'data/product_card_type.dart';

abstract class ProductItemFactory {
  Widget build(
    BuildContext context, {
    required BaseProduct product,
    required Function(BaseProduct product)? onProductTapped,
    required double cornerRadius,
    required ProductImageBackgroundType imageBackgroundType,
    required BadgeLocation badgeLocation,
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

class FyProductItemB implements ProductItemFactory {
  @override
  Widget build(BuildContext context,
      {required BaseProduct product,
      required Function(BaseProduct product)? onProductTapped,
      required double cornerRadius,
      required ProductImageBackgroundType imageBackgroundType,
      required BadgeLocation badgeLocation,
      required Widget? action,
      required Function(BaseProduct product)? onActionTapped,
      required ProductCardType type}) {
    return ProductCardB(
      product: product,
      cornerRadius: cornerRadius,
      imageBackgroundType: imageBackgroundType,
      badgeLocation: badgeLocation,
      type: type,
    );
  }
}

class FyProductItemA implements ProductItemFactory {
  @override
  Widget build(BuildContext context,
      {required BaseProduct product,
      required Function(BaseProduct product)? onProductTapped,
      required double cornerRadius,
      required ProductImageBackgroundType imageBackgroundType,
      required BadgeLocation badgeLocation,
      required Widget? action,
      required Function(BaseProduct product)? onActionTapped,
      required ProductCardType type}) {
    return ProductCardA(
      product: product,
      cornerRadius: cornerRadius,
      imageBackgroundType: imageBackgroundType,
      badgeLocation: badgeLocation,
      type: type,
    );
  }
}
