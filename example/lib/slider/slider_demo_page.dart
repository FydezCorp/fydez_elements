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
  final _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    const image =
        'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg';
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DropdownButton(
                items: SliderType.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.toString()),
                        ))
                    .toList(),
                onChanged: (value) =>
                    setState(() => type = value as SliderType),
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
                        onChanged: (value) =>
                            setState(() => aspectRatio = value),
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
              Padding(
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    _controller.animateToPage(2);
                  },
                  child: const Text('Go to index 2'),
                ),
              ),
              FySlider.create(
                context,
                aspectRatio: aspectRatio,
                cornerRadius: cornerRadius,
                delay: delay.floor(),
                margin: margin,
                type: type,
                hasIndicator: hasIndicator,
                isAutoPlay: isAutoPlay,
                controller: _controller,
                items: [
                  SliderItem(
                    image:
                        'https://fydez-assets.s3.amazonaws.com/4021ef59a3214da38c235be33e95eede.png',
                    cta: CTA(
                      name: 'name',
                      action: () {
                        log('action');
                      },
                    ),
                  ),
                  SliderItem(
                    image:
                        'https://fydez-assets.s3.amazonaws.com/268e93e483594ce5859f16ef2a844c48.png',
                    cta: CTA(
                      name: 'name',
                      action: () {
                        log('action');
                      },
                    ),
                  ),
                  SliderItem(
                    image:
                        'https://fydez-assets.s3.amazonaws.com/8cfcc42ea50c46659126bc209acbdaa1.png',
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
      ),
    );
  }
}
