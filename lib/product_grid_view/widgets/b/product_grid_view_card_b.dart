import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../product_card_background.dart';
import '../product_card_price.dart';
import '../product_image_widget.dart';

class ProductGridViewCardB extends StatelessWidget {
  final BaseProduct product;
  final Function(BaseProduct product)? onProductTapped;
  final double cornerRadius;
  final ProductImageBackgroundType imageBackgroundType;
  final BadgeLocation badgeLocation;
  final Widget? action;

  const ProductGridViewCardB({
    Key? key,
    required this.product,
    this.onProductTapped,
    required this.cornerRadius,
    required this.imageBackgroundType,
    required this.badgeLocation,
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
      child: ProductCardBackground(
        cornerRadius: cornerRadius,
        imageBackgroundType: imageBackgroundType,
        child: Column(
          children: [
            ProductImageWidget(
              product: product,
              imageBackgroundType: imageBackgroundType,
            ),
            ProductCardDetails(product: product),
          ],
        ),
      ),
    );
  }
}

class ProductCardDetails extends StatelessWidget {
  const ProductCardDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  final BaseProduct product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            product.name,
            style: context.textTheme.titleMedium!.copyWith(
              color: context.fyColors.textTenColor,
            ),
          ),
          const SizedBox(height: 5),
          ProductCardPrice(product: product),
          const SizedBox(height: 5),
          Row(
            children: [
              ...product.variations
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: e.representative,
                    ),
                  )
                  .toList(),
            ],
          )
        ],
      ),
    );
  }
}
