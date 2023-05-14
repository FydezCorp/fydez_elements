// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fydez_elements/const/constants.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/product_grid_view/widgets/b/product_grid_view_b.dart';
import 'package:fydez_elements/product_item/data/product_card_type.dart';

import 'widgets/a/product_grid_view_a.dart';

abstract class FyProductGridView {
  final List<BaseProduct> products;
  final ProductCardType type;
  final ProductImageBackgroundType imageBackgroundType;
  final BadgeLocation badgeLocation;
  final Widget? action;
  final Function(BaseProduct product)? onActionTapped;
  final double cornerRadius;
  final Function(BaseProduct product)? onProductTapped;
  final ScrollOption? scrollOption;
  // TODO: Add physics or a way to hande scrolling.

  FyProductGridView({
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

  /// The widget that will be returned to show on screen!
  Widget get render;

  factory FyProductGridView.make(
    BuildContext context, {
    ProductCardType? type,
    required List<BaseProduct> products,
    ProductImageBackgroundType? imageBackgroundType,
    BadgeLocation? badgeLocation,
    Widget? action,
    Function(BaseProduct product)? onActionTapped,
    required double cornerRadius,
    Function(BaseProduct)? onProductTapped,
    ScrollOption? scrollOption,
  }) {
    // TODO: Read these values from context.
    final gridViewType = type ?? ProductCardType.A;
    final gridViewImageBackgroundType =
        imageBackgroundType ?? ProductImageBackgroundType.white;
    final gridViewBadgeLocation = badgeLocation ?? BadgeLocation.topRound;

    double calculateHorizontalGap() {
      if (imageBackgroundType == ProductImageBackgroundType.white &&
          cornerRadius == 0) {
        return 0;
      } else {
        return Constants.productGridViewGap;
      }
    }

    switch (gridViewType) {
      case ProductCardType.A:
        return ProductGridViewA(
          action: action,
          onActionTapped: onActionTapped,
          badgeLocation: gridViewBadgeLocation,
          cornerRadius: cornerRadius,
          imageBackgroundType: gridViewImageBackgroundType,
          products: products,
          type: gridViewType,
          horizontalGap: calculateHorizontalGap(),
          onProductTapped: onProductTapped,
          scrollOption: scrollOption,
        );
      case ProductCardType.B:
        return ProductGridViewB(
          action: action,
          onActionTapped: onActionTapped,
          badgeLocation: gridViewBadgeLocation,
          cornerRadius: cornerRadius,
          imageBackgroundType: gridViewImageBackgroundType,
          products: products,
          type: gridViewType,
          horizontalGap: calculateHorizontalGap(),
          scrollOption: scrollOption,
          onProductTapped: onProductTapped,
        );
    }
  }
}
