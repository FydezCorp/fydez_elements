import 'dart:developer';

import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class ProductGridViewDemoPage extends StatefulWidget {
  const ProductGridViewDemoPage({Key? key}) : super(key: key);

  @override
  State<ProductGridViewDemoPage> createState() =>
      _ProductGridViewDemoPageState();
}

class _ProductGridViewDemoPageState extends State<ProductGridViewDemoPage> {
  double cornerRadius = 0;
  ProductGridViewCardType type = ProductGridViewCardType.A;
  ProductImageBackgroundType imageBackgroundType =
      ProductImageBackgroundType.white;
  BadgeLocation badgeLocation = BadgeLocation.bottomRound;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Text('Corner radius: ${cornerRadius.toStringAsFixed(2)}'),
                Expanded(
                  child: Slider(
                    value: cornerRadius,
                    onChanged: (value) {
                      setState(() {
                        cornerRadius = value;
                      });
                    },
                    min: 0,
                    max: 35,
                  ),
                ),
              ],
            ),
            DropdownButton<ProductGridViewCardType>(
              items: ProductGridViewCardType.values
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text('Type: ${e.name}'),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  type = value!;
                });
              },
              value: type,
            ),
            DropdownButton<ProductImageBackgroundType>(
              items: ProductImageBackgroundType.values
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text('Background Image Type: ${e.name}'),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  imageBackgroundType = value!;
                });
              },
              value: imageBackgroundType,
            ),
            DropdownButton<BadgeLocation>(
              items: BadgeLocation.values
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text('Badge Location: ${e.name}'),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  badgeLocation = value!;
                });
              },
              value: badgeLocation,
            ),
            const Gap(20.0),
            FyProductGridView.make(
              context,
              products: SampleProduct.mockProducts(),
              type: type,
              cornerRadius: cornerRadius,
              badgeLocation: badgeLocation,
              scrollOption: ScrollOption.nonScrollable,
              imageBackgroundType: imageBackgroundType,
              onProductTapped: (product) {
                log('Product ${product.id} tapped!');
              },
              action: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Colors.white),
                  child: const FlutterLogo()),
              onActionTapped: (product) {
                log('Action tapped! for product ${product.id}');
              },
            ).render,
          ],
        ),
      ),
    );
  }
}
