import 'dart:developer';

import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

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
              children: [
                const Text('Search Bar Block'),
                const Gap(20.0),
                FySearchBarBlock.create(
                  context,
                  type: SearchBarType.simple,
                  placeholder: 'Search products...',
                  onSearchTapped: () {
                    log('Search Tapped');
                  },
                ),
                const Gap(20.0),
                const Text('Image Block'),
                const Gap(20.0),
                FyImageBlock.create(
                  context,
                  imageUrl:
                      'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
                  aspectRatio: 2,
                  cta: CTA(
                    name: 'Image',
                    action: () {
                      log('Image Tapped');
                    },
                  ),
                  cornerRadius: 10.0,
                  type: ImageBlockType.shadow,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
