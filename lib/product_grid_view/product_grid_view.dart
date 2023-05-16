// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fydez_elements/const/constants.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'grid_view_maker.dart';

class ProductGridView extends StatelessWidget {
  final List<BaseProduct> products;
  final ProductCardType type;
  final ProductImageBackgroundType imageBackgroundType;
  final ProductBadgeLocation badgeLocation;
  final Widget? action;
  final Function(BaseProduct product)? onActionTapped;
  final double cornerRadius;
  final Function(BaseProduct product)? onProductTapped;
  final ScrollOption? scrollOption;

  const ProductGridView({
    super.key,
    required this.products,
    required this.type,
    required this.imageBackgroundType,
    required this.badgeLocation,
    required this.cornerRadius,
    this.action,
    this.onActionTapped,
    this.onProductTapped,
    this.scrollOption = ScrollOption.scrollable,
  });

  double calculateGap() {
    if (imageBackgroundType == ProductImageBackgroundType.white &&
        cornerRadius == 0) {
      return 0;
    } else {
      return Constants.productGridViewGap;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridViewMaker(
      gap: calculateGap(),
      scrollOption: scrollOption,
      children: products
          .map(
            (product) => FyProductItem.make(
              context,
              product: product,
              onProductTapped: onProductTapped,
              action: action,
              onActionTapped: onActionTapped,
              productBadgeLocation: badgeLocation,
              productCardType: type,
              productCornerRadius: cornerRadius,
              productImageBackgroundType: imageBackgroundType,
            ),
          )
          .toList(),
    );
  }
}
