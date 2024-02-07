import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

class CountdownDemo extends StatefulWidget {
  const CountdownDemo({
    super.key,
  });

  @override
  State<CountdownDemo> createState() => _CountdownDemoState();
}

class _CountdownDemoState extends State<CountdownDemo> {
  CountdownType type = CountdownType.simple;
  double cornerRadius = 10.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Countdown Block'),
        DropdownButton<CountdownType>(
          items: CountdownType.values
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
        FyCountdownBlock.create(
          context,
          remainingSeconds: 100000,
          headline: 'Sample Countdown Headline',
          color: context.colorScheme.primary,
          cornerRadius: cornerRadius,
          type: type,
        ),
      ],
    );
  }
}
