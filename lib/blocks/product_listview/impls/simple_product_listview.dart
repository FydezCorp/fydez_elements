import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:gap/gap.dart';

import '../../../fydez_elements.dart';
import '../product_listview_factory.dart';

class SimpleProductListView implements ProductListViewFactory {
  @override
  Widget create({
    required List<BaseProduct> products,
    required String title,
    CTA? cta,
    required Function(BaseProduct product) onProductTapped,
    int? remainingSeconds,
  }) {
    return SimpleProductListViewWidget(
      products: products,
      title: title,
      cta: cta,
      onProductTapped: onProductTapped,
      remainingSeconds: remainingSeconds,
    );
  }
}

class SimpleProductListViewWidget extends StatelessWidget {
  final List<BaseProduct> products;
  final String title;
  final CTA? cta;
  final Function(BaseProduct product) onProductTapped;
  final int? remainingSeconds;
  const SimpleProductListViewWidget({
    Key? key,
    required this.title,
    required this.products,
    required this.cta,
    required this.onProductTapped,
    this.remainingSeconds,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text(
                title,
                style: context.textTheme.titleLarge,
              ),
              const Gap(10.0),
              if (remainingSeconds != null)
                SimpleProductCountdown(remainingSeconds: remainingSeconds!),
              const Spacer(),
              if (cta != null)
                FyButton.text(
                  onPressed: cta!.action,
                  options: TextButtonOption(
                    text: cta!.name,
                  ),
                ),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.separated(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final product = products[index];
              return SizedBox(
                width: 150,
                child: FyProductItem.make(
                  context,
                  product: product,
                  onProductTapped: onProductTapped,
                  action: null,
                  onActionTapped: null,
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
            physics: const BouncingScrollPhysics(),
          ),
        ),
      ],
    );
  }
}

class SimpleProductCountdown extends StatefulWidget {
  final int remainingSeconds;
  const SimpleProductCountdown({
    super.key,
    required this.remainingSeconds,
  });

  @override
  State<SimpleProductCountdown> createState() => _SimpleProductCountdownState();
}

class _SimpleProductCountdownState extends State<SimpleProductCountdown> {
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
