import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class EmptyDemoPage extends StatelessWidget {
  const EmptyDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FyEmpty.cart(text: 'Some text'),
    );
  }
}
