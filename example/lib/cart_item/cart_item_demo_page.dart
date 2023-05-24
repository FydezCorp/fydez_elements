import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class CartItemDemoPage extends StatelessWidget {
  const CartItemDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            FyCartItem.create(
              context,
              onDelete: () {},
              onAdd: () {},
              onFraction: () {},
              productImage:
                  'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
              productTitle: 'product Title',
              productPrice: 12.65,
              categoryName: 'category Name',
              count: 2,
            ),
            FyCartItem.create(
              context,
              onDelete: () {},
              onAdd: () {},
              onFraction: () {},
              productImage:
                  'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
              productTitle: 'product Title',
              productPrice: 12.65,
              categoryName: 'category Name',
              count: 2,
            ),
          ],
        )),
      ),
    );
  }
}
