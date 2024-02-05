import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../countdown_with_background_factory.dart';

class SimpleCountdownWithBackground implements CountdownWithBackgroundFactory {
  @override
  Widget create({
    required int remainingSeconds,
    required String headline,
    required Color color,
    required double cornerRadius,
    required String backgroundImage,
    VoidCallback? onTap,
  }) {
    return SimpleCounterWithBackgroundWidget(
      color: color,
      cornerRadius: cornerRadius,
      headline: headline,
      remainingSeconds: remainingSeconds,
      backgroundImage: backgroundImage,
      onTap: onTap,
    );
  }
}

class SimpleCounterWithBackgroundWidget extends StatefulWidget {
  final int remainingSeconds;
  final String headline;
  final Color color;
  final double cornerRadius;
  final String backgroundImage;
  final VoidCallback? onTap;
  const SimpleCounterWithBackgroundWidget({
    super.key,
    required this.remainingSeconds,
    required this.headline,
    required this.color,
    required this.cornerRadius,
    required this.backgroundImage,
    this.onTap,
  });

  @override
  State<SimpleCounterWithBackgroundWidget> createState() =>
      _SimpleCounterWithBackgroundWidgetState();
}

class _SimpleCounterWithBackgroundWidgetState
    extends State<SimpleCounterWithBackgroundWidget> {
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

    const insidePadding = 8.0;

    TextStyle numberStyle = context.textTheme.headlineMedium!.copyWith(
      color: context.colorScheme.onError,
      fontSize: 32,
    );

    TextStyle labelStyle = context.textTheme.labelSmall!.copyWith(
      color: context.colorScheme.onError,
    );
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: context.fyColors.textTwoColor,
          borderRadius: BorderRadius.circular(widget.cornerRadius),
          image: DecorationImage(
            image: CachedNetworkImageProvider(widget.backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(insidePadding),
        margin: EdgeInsets.symmetric(
          vertical: context.fySpacing.topBottomPadding.toDouble(),
          horizontal: context.fySpacing.rightLeftPadding.toDouble(),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0, bottom: 32.0),
              child: Text(
                widget.headline,
                style: context.textTheme.headlineLarge!
                    .copyWith(color: widget.color),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                color: context.colorScheme.error.withOpacity(0.75),
                borderRadius: BorderRadius.circular(
                  widget.cornerRadius - insidePadding,
                ),
              ),
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
      ),
    );
  }
}
