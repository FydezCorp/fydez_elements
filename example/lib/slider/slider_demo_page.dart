import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class SliderDemoPage extends StatefulWidget {
  const SliderDemoPage({Key? key}) : super(key: key);

  @override
  State<SliderDemoPage> createState() => _SliderDemoPageState();
}

class _SliderDemoPageState extends State<SliderDemoPage> {
  double aspectRatio = 16 / 9;
  double delay = 2000;
  double cornerRadius = 16.0;
  double margin = 10.0;
  SliderType type = SliderType.simple;
  bool isAutoPlay = true;
  bool hasIndicator = true;

  @override
  Widget build(BuildContext context) {
    const image =
        'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg';
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DropdownButton(
              items: SliderType.values
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.toString()),
                      ))
                  .toList(),
              onChanged: (value) => setState(() => type = value as SliderType),
              value: type,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Margin ${margin.toStringAsFixed(2)}'),
                  Expanded(
                    child: Slider(
                      value: margin,
                      onChanged: (value) => setState(() => margin = value),
                      max: 50,
                      min: 0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Corner Radius ${cornerRadius.toStringAsFixed(2)}'),
                  Expanded(
                    child: Slider(
                      value: cornerRadius,
                      onChanged: (value) =>
                          setState(() => cornerRadius = value),
                      max: 50,
                      min: 0,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Aspect Ratio ${aspectRatio.toStringAsFixed(2)}'),
                  Expanded(
                    child: Slider(
                      value: aspectRatio,
                      onChanged: (value) => setState(() => aspectRatio = value),
                      max: 4,
                      min: 1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                value: isAutoPlay,
                onChanged: (value) {
                  setState(() {
                    isAutoPlay = value!;
                  });
                },
                title: const Text('Auto play?'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CheckboxListTile(
                value: hasIndicator,
                onChanged: (value) {
                  setState(() {
                    hasIndicator = value!;
                  });
                },
                title: const Text('Has indicator?'),
              ),
            ),
            FySlider.create(
              aspectRatio: aspectRatio,
              cornerRadius: cornerRadius,
              delay: delay.floor(),
              margin: margin,
              type: type,
              isAutoPlay: isAutoPlay,
              items: [
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
