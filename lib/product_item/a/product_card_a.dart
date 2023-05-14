import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../data/product_card_type.dart';
import '../widgets/badge_widget.dart';
import '../widgets/product_card_background.dart';
import '../widgets/product_card_details.dart';
import '../widgets/product_image_widget.dart';

class ProductCardA extends StatelessWidget {
  final BaseProduct product;
  final Function(BaseProduct product)? onProductTapped;
  final double cornerRadius;
  final ProductImageBackgroundType imageBackgroundType;
  final BadgeLocation badgeLocation;
  final Widget? action;
  final Function(BaseProduct product)? onActionTapped;
  final ProductCardType type;

  const ProductCardA({
    Key? key,
    required this.product,
    this.onProductTapped,
    required this.cornerRadius,
    required this.imageBackgroundType,
    required this.badgeLocation,
    required this.type,
    this.action,
    this.onActionTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
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
              (product.badge != null &&
                      (badgeLocation == BadgeLocation.bottomRound ||
                          badgeLocation == BadgeLocation.bottomSharp))
                  ? Row(
                      children: [
                        BadgeWidget(
                            badge: product.badge!,
                            badgeLocation: badgeLocation),
                      ],
                    )
                  : const SizedBox()
            ],
          ),
        ),
        action != null
            ? Positioned(
                top: 5,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    onActionTapped != null ? onActionTapped!(product) : () {};
                  },
                  child: action!,
                ),
              )
            : const SizedBox(),
        Positioned(
            top: 5,
            left: 5,
            child: (product.badge != null &&
                    (badgeLocation == BadgeLocation.topRound ||
                        badgeLocation == BadgeLocation.topSharp))
                ? BadgeWidget(
                    badge: product.badge!, badgeLocation: badgeLocation)
                : const SizedBox())
      ],
    );
  }
}