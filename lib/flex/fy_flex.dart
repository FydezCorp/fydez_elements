import 'package:flutter/material.dart';

class FyFlex extends StatelessWidget {
  final Widget button1;
  final Widget button2;
  final double ratio;
  final double gap;
  const FyFlex({
    required this.button1,
    required this.button2,
    this.gap = 20,
    this.ratio = 1,
    Key? key,
  }) : super(key: key);

  List<int> getValuesFromRatio(double ratio) {
    int a = ratio.toInt();
    int b = ((ratio - a) * 100).toInt();
    int gcd = _gcd(a * 100 + b, 100);
    return [(a * 100 + b) ~/ gcd, 100 ~/ gcd];
  }

  int _gcd(int a, int b) {
    if (b == 0) {
      return a;
    }
    return _gcd(b, a % b);
  }

  @override
  Widget build(BuildContext context) {
    final ratios = getValuesFromRatio(ratio);
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          flex: ratios[1],
          child: button2,
        ),
        SizedBox(width: gap),
        Expanded(
          flex: ratios[0],
          child: button1,
        ),
      ],
    );
  }
}
