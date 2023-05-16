import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/product_item/product_item_factory.dart';

class FyProductItem {
  static Widget make(
    BuildContext context, {
    required ProductCardType? productCardType,
    required ProductImageBackgroundType? productImageBackgroundType,
    required ProductBadgeLocation? productBadgeLocation,
    required double? productCornerRadius,
    required BaseProduct product,
    required dynamic Function(BaseProduct)? onProductTapped,
    required Widget? action,
    required dynamic Function(BaseProduct)? onActionTapped,
  }) {
    final finalProductCardType =
        productCardType ?? context.fyParameters.productCardType;
    final finalProductImageBackgroundType = productImageBackgroundType ??
        context.fyParameters.productImageBackgroundType;
    final finalProductBadgeLocation =
        productBadgeLocation ?? context.fyParameters.productBadgeLocation;
    final finalProductCornerRadius =
        productCornerRadius ?? context.fyParameters.productCornerRadius;
    return ProductItemFactory(type: finalProductCardType).build(
      context,
      product: product,
      onProductTapped: onProductTapped,
      cornerRadius: finalProductCornerRadius,
      imageBackgroundType: finalProductImageBackgroundType,
      badgeLocation: finalProductBadgeLocation,
      action: action,
      onActionTapped: onActionTapped,
      type: finalProductCardType,
    );
  }
}
