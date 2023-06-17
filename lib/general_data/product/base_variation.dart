import 'package:flutter/material.dart';

abstract class BaseVariation {
  final int id;

  /// The widget that will represent the product variation in grid view.
  Widget get representative;

  BaseVariation({
    required this.id,
  });
}

class SampleVariation extends BaseVariation {
  final Color color;
  SampleVariation({
    required super.id,
    required this.color,
  });

  @override
  Widget get representative => Container(
        width: 10,
        height: 10,
        decoration: ShapeDecoration(
          shape: const CircleBorder(),
          color: color,
        ),
      );
}
