import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class SliderDemoPage extends StatelessWidget {
  const SliderDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FySlider.create(items: [
            SliderItem(
              image: 'image',
              cta: CTA(
                name: 'name',
                action: () {
                  log('action');
                },
              ),
            ),
            SliderItem(
              image: 'image',
              cta: CTA(
                name: 'name',
                action: () {
                  log('action');
                },
              ),
            ),
          ])
        ],
      ),
    );
  }
}
