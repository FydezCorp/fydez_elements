import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../product_card_background.dart';
import '../product_card_details.dart';
import '../product_card_price.dart';
import '../product_image_widget.dart';

class ProductGridViewCardA extends StatelessWidget {
  final BaseProduct product;
  final Function(BaseProduct product)? onProductTapped;
  final double cornerRadius;
  final ProductImageBackgroundType imageBackgroundType;
  final BadgeLocation badgeLocation;
  final Widget? action;
  final ProductGridViewCardType type;

  const ProductGridViewCardA({
    Key? key,
    required this.product,
    this.onProductTapped,
    required this.cornerRadius,
    required this.imageBackgroundType,
    required this.badgeLocation,
    required this.type,
    this.action,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onProductTapped != null) {
          onProductTapped!(product);
        }
      },
      child: Column(
        children: [
          ProductCardBackground(
            cornerRadius: cornerRadius,
            imageBackgroundType: imageBackgroundType,
            child: ProductImageWidget(
              product: product,
              imageBackgroundType: imageBackgroundType,
            ),
          ),
          ProductCardDetails(
            product: product,
            type: type,
          ),
        ],
      ),
    );
  }
}
