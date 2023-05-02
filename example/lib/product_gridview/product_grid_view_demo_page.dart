import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class ProductGridViewDemoPage extends StatelessWidget {
  const ProductGridViewDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FyProductGridView.make(
        context,
        products: SampleProduct.mockProducts(),
        cornerRadius: 0,
      ).render,
    );
  }
}
