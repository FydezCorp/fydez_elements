import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../../gap.dart';

class CollectionCarouselDemo extends StatefulWidget {
  const CollectionCarouselDemo({super.key});

  @override
  State<CollectionCarouselDemo> createState() => _CollectionCarouselDemoState();
}

class _CollectionCarouselDemoState extends State<CollectionCarouselDemo> {
  CollectionCarouselType type = CollectionCarouselType.simple;
  bool hasTitle = true;
  double cornerRadius = 5.0;
  @override
  Widget build(BuildContext context) {
    final items = [
      CollectionItem(
        title: 'Title 0',
        imageUrl:
            'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
        id: 0,
      ),
      CollectionItem(
        title: 'Title 1',
        imageUrl:
            'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
        id: 1,
      ),
      CollectionItem(
        title: 'Title 2',
        imageUrl:
            'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
        id: 2,
      ),
      CollectionItem(
        title: 'Title 3',
        imageUrl:
            'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
        id: 3,
      ),
    ];
    return Column(
      children: [
        const Text('Collection Carrousel Block'),
        Row(
          children: [
            Text('Corner radius: ${cornerRadius.toStringAsFixed(2)}'),
            Expanded(
              child: Slider(
                value: cornerRadius,
                onChanged: (value) {
                  setState(() {
                    cornerRadius = value;
                  });
                },
                min: 0,
                max: 50,
              ),
            )
          ],
        ),
        CheckboxListTile(
          value: hasTitle,
          onChanged: (value) {
            setState(() {
              hasTitle = value!;
            });
          },
          title: const Text('Has title'),
        ),
        const Gap(20.0),
        FyCollectionCarouselBlock.create(
          items: items,
          type: type,
          hasTitle: hasTitle,
          cornerRadius: cornerRadius,
          title: 'Categories',
          onCollectionTapped: (id) {
            log('Collection tapped: $id');
          },
        ),
      ],
    );
  }
}
