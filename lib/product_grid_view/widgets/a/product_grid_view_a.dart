import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../../product_grid_view.dart';
import '../grid_view_maker.dart';

class ProductGridViewA extends FyProductGridView {
  final double horizontalGap;
  ProductGridViewA({
    required super.products,
    required super.type,
    required super.imageBackgroundType,
    required super.badgeLocation,
    required super.action,
    required super.cornerRadius,
    required this.horizontalGap,
  });

  @override
  // TODO: implement render!
  Widget get render => GridViewMaker(
        gap: horizontalGap,
        children: products
            .map(
              // TODO: Implement this.
              (product) => Text(product.name),
            )
            .toList(),
      );
}

// class ProductGridViewCardA extends StatelessWidget {
//   final BaseProduct product;
//   const ProductGridViewCardA({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }