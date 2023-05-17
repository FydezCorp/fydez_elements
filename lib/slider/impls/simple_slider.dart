import 'package:flutter/material.dart';

import '../data/slider_item.dart';
import '../slider_factory.dart';

class SimpleSlider implements SliderFactory {
  @override
  Widget build({
    Key? key,
    required List<SliderItem> items,
    required double aspectRatio,
  }) {
    return _SimpleSliderImpl(items);
  }
}

class _SimpleSliderImpl extends StatefulWidget {
  final List<SliderItem> items;
  const _SimpleSliderImpl(this.items);

  @override
  State<_SimpleSliderImpl> createState() => _SimpleSliderImplState();
}

class _SimpleSliderImplState extends State<_SimpleSliderImpl> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemBuilder: (context, index) {
        return Container();
      },
      itemCount: widget.items.length,
    );
  }
}
