import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../countdown_factory.dart';

class SimpleCountdown implements CountdownFactory {
  @override
  Widget create({
    required int remainingSeconds,
    required String headline,
    required Color color,
    required double cornerRadius,
  }) {
    return SimpleCounterWidget(
      color: color,
      cornerRadius: cornerRadius,
      headline: headline,
      remainingSeconds: remainingSeconds,
    );
  }
}

class SimpleCounterWidget extends StatefulWidget {
  final int remainingSeconds;
  final String headline;
  final Color color;
  final double cornerRadius;
  const SimpleCounterWidget({
    super.key,
    required this.remainingSeconds,
    required this.headline,
    required this.color,
    required this.cornerRadius,
  });

  @override
  State<SimpleCounterWidget> createState() => _SimpleCounterWidgetState();
}

class _SimpleCounterWidgetState extends State<SimpleCounterWidget> {
  late int _seconds;
  late Timer _timer;
  @override
  void initState() {
    setState(() {
      _seconds = widget.remainingSeconds;
    });
    super.initState();

    // Create a timer that triggers every second.
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      // Update the value of the seconds variable.
      _seconds--;

      // If the seconds variable is zero, stop the timer.
      if (_seconds == 0) {
        timer.cancel();
      }

      // Update the UI.
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Calculate the number of days, hours, minutes, and seconds.
    int days = _seconds ~/ (24 * 3600);
    int hours = (_seconds % (24 * 3600)) ~/ 3600;
    int minutes = (_seconds % 3600) ~/ 60;
    int seconds = _seconds % 60;

    TextStyle numberStyle = context.textTheme.headlineMedium!.copyWith(
      color: context.fyColors.textTenColor,
      fontSize: 32,
    );

    TextStyle labelStyle = context.textTheme.labelSmall!.copyWith(
      color: context.fyColors.textSixColor,
    );
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.fyColors.textTwoColor,
        borderRadius: BorderRadius.circular(widget.cornerRadius),
      ),
      padding: const EdgeInsets.all(20.0),
      margin: EdgeInsets.symmetric(
        vertical: context.fySpacing.topBottomPadding.toDouble(),
        horizontal: context.fySpacing.rightLeftPadding.toDouble(),
      ),
      child: Column(
        children: [
          Text(
            widget.headline,
            style:
                context.textTheme.headlineLarge!.copyWith(color: widget.color),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        days.toString(),
                        style: numberStyle,
                      ),
                      Text(
                        'Days',
                        style: labelStyle,
                      ),
                    ],
                  ),
                ),
                Text(':', style: labelStyle),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        hours.toString(),
                        style: numberStyle,
                      ),
                      Text(
                        'Hours',
                        style: labelStyle,
                      ),
                    ],
                  ),
                ),
                Text(':', style: labelStyle),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        minutes.toString(),
                        style: numberStyle,
                      ),
                      Text(
                        'Minutes',
                        style: labelStyle,
                      ),
                    ],
                  ),
                ),
                Text(':', style: labelStyle),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        seconds.toString(),
                        style: numberStyle,
                      ),
                      Text(
                        'Seconds',
                        style: labelStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
