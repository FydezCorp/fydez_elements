import 'package:example/blocks/widgets/collection_slider_demo.dart';
import 'package:example/blocks/widgets/countdown_demo.dart';
import 'package:example/blocks/widgets/products_listview_demo.dart';
import 'package:example/gap.dart';
import 'package:flutter/material.dart';

import 'widgets/collection_carrousel_demo.dart';
import 'widgets/image_demo.dart';
import 'widgets/search_bar_demo.dart';

class BlocksDemoPage extends StatelessWidget {
  const BlocksDemoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: const [
                SearchBarDemo(),
                Gap(20.0),
                ImageDemo(),
                Gap(20.0),
                // VideoDemo(),
                // Gap(20.0),
                CollectionCarouselDemo(),
                Gap(20.0),
                CollectionSliderDemo(),
                Gap(20.0),
                CountdownDemo(), Gap(20.0), ProductListViewDemo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}