import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class ProductGridViewCardA extends StatelessWidget {
  final BaseProduct product;
  final Function(BaseProduct product)? onProductTapped;
  final double cornerRadius;
  final ProductImageBackgroundType imageBackgroundType;
  final BadgeLocation badgeLocation;
  final Widget? action;

  const ProductGridViewCardA({
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
      child:
          Container(color: Colors.amber, child: Text('Product ${product.id}')),
    );
  }
}
