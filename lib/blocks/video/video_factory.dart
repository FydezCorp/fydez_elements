import 'package:flutter/material.dart';

import '../../fydez_elements.dart';
import 'impls/normal_video_factory.dart';

abstract class VideoFactory {
  Widget create(
    BuildContext context, {
    required String videoUrl,
    required double aspectRatio,
    required CTA cta,
    required double cornerRadius,
  });

  factory VideoFactory({required VideoBlockType type}) {
    switch (type) {
      case VideoBlockType.normal:
        return NormalVideoFactory();
    }
  }
}
