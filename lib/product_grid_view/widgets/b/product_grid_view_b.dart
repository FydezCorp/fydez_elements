// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../grid_view_maker.dart';
import 'product_grid_view_card_b.dart';

class ProductGridViewB extends FyProductGridView {
  final double horizontalGap;
  ProductGridViewB({
    required super.products,
    required super.type,
    required super.imageBackgroundType,
    required super.badgeLocation,
    required super.action,
    required super.cornerRadius,
    required super.onProductTapped,
    required super.scrollOption,
    required this.horizontalGap,
    required super.onActionTapped,
  });

  @override
  Widget get render => GridViewMaker(
        gap: horizontalGap,
        scrollOption: scrollOption,
        children: products
            .map(
              (product) => ProductGridViewCardB(
                badgeLocation: badgeLocation,
                product: product,
                cornerRadius: cornerRadius,
                imageBackgroundType: imageBackgroundType,
                onProductTapped: onProductTapped,
                action: action,
                onActionTapped: onActionTapped,
                type: type,
              ),
            )
            .toList(),
      );
}
