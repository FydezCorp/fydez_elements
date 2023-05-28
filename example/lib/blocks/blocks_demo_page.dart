import 'package:example/blocks/widgets/video_demo.dart';
import 'package:example/gap.dart';
import 'package:flutter/material.dart';

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
                VideoDemo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
