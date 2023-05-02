// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fydez_elements/const/constants.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:fydez_elements/product_grid_view/data/product_grid_view_card_type.dart';

import 'data/badge_location.dart';
import 'data/product_image_background_type.dart';
import 'widgets/a/product_grid_view_a.dart';

abstract class FyProductGridView {
  final List<BaseProduct> products;
  final ProductGridViewCardType type;
  final ProductImageBackgroundType imageBackgroundType;
  final BadgeLocation badgeLocation;
  final Widget? action;
  final int cornerRadius;
  final Function(BaseProduct product)? onProductTapped;
  // TODO: Add physics or a way to hande scrolling.
  FyProductGridView({
    required this.products,
    required this.type,
    required this.imageBackgroundType,
    required this.badgeLocation,
    required this.cornerRadius,
    this.action,
    this.onProductTapped,
  });

  /// The widget that will be returned to show on screen!
  Widget get render;

  factory FyProductGridView.make(
    BuildContext context, {
    ProductGridViewCardType? type,
    required List<BaseProduct> products,
    ProductImageBackgroundType? imageBackgroundType,
    BadgeLocation? badgeLocation,
    Widget? action,
    required int cornerRadius,
    Function(BaseProduct)? onProductTapped,
  }) {
    // TODO: Read these values from context.
    final gridViewType = type ?? ProductGridViewCardType.A;
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
      case ProductGridViewCardType.A:
        return ProductGridViewA(
          action: action,
          badgeLocation: gridViewBadgeLocation,
          cornerRadius: cornerRadius,
          imageBackgroundType: gridViewImageBackgroundType,
          products: products,
          type: gridViewType,
          horizontalGap: calculateHorizontalGap(),
          onProductTapped: onProductTapped,
        );
      case ProductGridViewCardType.B:
        return ProductGridViewA(
          action: action,
          badgeLocation: gridViewBadgeLocation,
          cornerRadius: cornerRadius,
          imageBackgroundType: gridViewImageBackgroundType,
          products: products,
          type: gridViewType,
          horizontalGap: calculateHorizontalGap(),
          onProductTapped: onProductTapped,
        );
    }
  }
}
