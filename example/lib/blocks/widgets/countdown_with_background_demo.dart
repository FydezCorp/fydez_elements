import 'dart:developer';

import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

class CountdownWithBackgroundDemo extends StatefulWidget {
  const CountdownWithBackgroundDemo({
    super.key,
  });

  @override
  State<CountdownWithBackgroundDemo> createState() =>
      _CountdownWithBackgroundDemoState();
}

class _CountdownWithBackgroundDemoState
    extends State<CountdownWithBackgroundDemo> {
  CountdownWithBackgroundType type = CountdownWithBackgroundType.simple;
  double cornerRadius = 10.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Countdown with Background Block'),
        DropdownButton<CountdownWithBackgroundType>(
          items: CountdownWithBackgroundType.values
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.name),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              type = value!;
            });
          },
          value: type,
        ),
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
                max: 50,
              ),
            )
          ],
        ),
        const Gap(20.0),
        FyCountdownWithBackgroundBlock.create(
          context, 
            remainingSeconds: 100000,
            headline: 'Sample Countdown Headline',
            backgroundImage:
                'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
            color: context.colorScheme.primary,
            cornerRadius: cornerRadius,
            type: type,
            onTap: () {
              log('Tap!');
            }),
      ],
    );
  }
}
