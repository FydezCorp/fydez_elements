import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/video/video_factory.dart';

import '../../general_data/blocks/cta.dart';
import 'data/video_block_type.dart';

class FyVideoBlock {
  static Widget create(
    BuildContext context, {
    required String videoUrl,
    required double aspectRatio,
    required double cornerRadius,
    required CTA cta,
    required VideoBlockType type,
  }) {
    return VideoFactory(type: type).create(
      context,
      videoUrl: videoUrl,
      aspectRatio: aspectRatio,
      cta: cta,
      cornerRadius: cornerRadius,
    );
  }
}
