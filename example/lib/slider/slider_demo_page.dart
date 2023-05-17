import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class SliderDemoPage extends StatefulWidget {
  const SliderDemoPage({Key? key}) : super(key: key);

  @override
  State<SliderDemoPage> createState() => _SliderDemoPageState();
}

class _SliderDemoPageState extends State<SliderDemoPage> {
  @override
  Widget build(BuildContext context) {
    const image =
        'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg';
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FySlider.create(items: [
              SliderItem(
                image: image,
                cta: CTA(
                  name: 'name',
                  action: () {
                    log('action');
                  },
                ),
              ),
              SliderItem(
                image: image,
                cta: CTA(
                  name: 'name',
                  action: () {
                    log('action');
                  },
                ),
              ),
              SliderItem(
                image: image,
                cta: CTA(
                  name: 'name',
                  action: () {
                    log('action');
                  },
                ),
              ),
              SliderItem(
                image: image,
                cta: CTA(
                  name: 'name',
                  action: () {
                    log('action');
                  },
                ),
              ),
              SliderItem(
                image: image,
                cta: CTA(
                  name: 'name',
                  action: () {
                    log('action');
                  },
                ),
              ),
              SliderItem(
                image: image,
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
      ),
    );
  }
}
