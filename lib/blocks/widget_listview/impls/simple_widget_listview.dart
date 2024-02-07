import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:gap/gap.dart';

import '../../../fydez_elements.dart';
import '../widget_listview_factory.dart';

class SimpleWidgetListView implements WidgetListViewFactory {
  @override
  Widget create({
    required List<Widget> widgets,
    required String title,
    CTA? cta,
    int? remainingSeconds,
  }) {
    return SimpleWidgetListViewWidget(
      widgets: widgets,
      title: title,
      cta: cta,
      remainingSeconds: remainingSeconds,
    );
  }
}

class SimpleWidgetListViewWidget extends StatelessWidget {
  final List<Widget> widgets;
  final String title;
  final CTA? cta;
  final int? remainingSeconds;
  const SimpleWidgetListViewWidget({
    Key? key,
    required this.title,
    required this.widgets,
    required this.cta,
    this.remainingSeconds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final horizontalPadding = context.fySpacing.rightLeftPadding.toDouble();
    final verticalPadding = context.fySpacing.topBottomPadding.toDouble();
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: verticalPadding,
            right: horizontalPadding,
            left: horizontalPadding,
          ),
          child: Row(
            children: [
              Text(
                title,
                style: context.textTheme.titleLarge,
              ),
              const Gap(10.0),
              if (remainingSeconds != null)
                SimpleWidgetListViewCountdown(
                    remainingSeconds: remainingSeconds!),
              const Spacer(),
              if (cta != null)
                FyTextButton.create(
                  context,
                  onPressed: cta!.action,
                  title: cta!.name,
                ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: widgets.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final widget = widgets[index];
              return Container(
                margin: EdgeInsets.only(
                  left: index == 0 ? horizontalPadding : horizontalPadding / 2,
                  right: index != widgets.length - 1 ? 0 : horizontalPadding,
                ),
                child: widget,
              );
            },
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

class SimpleWidgetListViewCountdown extends StatefulWidget {
  final int remainingSeconds;
  const SimpleWidgetListViewCountdown({
    super.key,
    required this.remainingSeconds,
  });

  @override
  State<SimpleWidgetListViewCountdown> createState() =>
      _SimpleWidgetListViewCountdownState();
}

class _SimpleWidgetListViewCountdownState
    extends State<SimpleWidgetListViewCountdown> {
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
    int days = _seconds ~/ (24 * 3600);
    int hours = (_seconds % (24 * 3600)) ~/ 3600;
    int minutes = (_seconds % 3600) ~/ 60;
    int seconds = _seconds % 60;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      decoration: ShapeDecoration(
        color: context.colorScheme.error,
        shape: const StadiumBorder(),
      ),
      child: Text('$days : $hours : $minutes : $seconds',
          style: context.textTheme.bodyLarge!.copyWith(
            color: context.colorScheme.onError,
          )),
    );
  }
}
