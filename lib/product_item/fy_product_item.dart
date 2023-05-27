import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/product_item/product_item_factory.dart';

class FyProductItem {
  static Widget make(
    BuildContext context, {
    ProductCardType? productCardType,
    ProductImageBackgroundType? productImageBackgroundType,
    ProductBadgeLocation? productBadgeLocation,
    double? productCornerRadius,
    required BaseProduct product,
    required dynamic Function(BaseProduct)? onProductTapped,
    required Widget? action,
    required dynamic Function(BaseProduct)? onActionTapped,
  }) {
    final finalProductCardType = productCardType ??
        context.fyParameters.productCardConfiguration.productCardType;
    final finalProductImageBackgroundType = productImageBackgroundType ??
        context
            .fyParameters.productCardConfiguration.productImageBackgroundType;
    final finalProductBadgeLocation = productBadgeLocation ??
        context.fyParameters.productCardConfiguration.productBadgeLocation;
    final finalProductCornerRadius = productCornerRadius ??
        context.fyParameters.productCardConfiguration.productCornerRadius;
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
