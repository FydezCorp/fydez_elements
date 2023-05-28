import 'package:flutter/material.dart';

import '../../../general_data/cta.dart';
import '../video_factory.dart';

class NormalVideoFactory implements VideoFactory {
  @override
  Widget create(
    BuildContext context, {
    required String videoUrl,
    required double aspectRatio,
    required CTA cta,
    required double cornerRadius,
  }) {
    return const NormalVideoFactoryWidget();
  }
}

class NormalVideoFactoryWidget extends StatelessWidget {
  const NormalVideoFactoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
