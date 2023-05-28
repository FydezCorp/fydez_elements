import 'dart:developer';

import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class ImageDemo extends StatefulWidget {
  const ImageDemo({
    super.key,
  });

  @override
  State<ImageDemo> createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  ImageBlockType type = ImageBlockType.normal;
  double aspectRatio = 2;
  double cornerRadius = 10.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Image Block'),
        DropdownButton<ImageBlockType>(
          items: ImageBlockType.values
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.name),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              type = value!;
            });
          },
          value: type,
        ),
        Row(
          children: [
            Text('Aspect ratio: ${aspectRatio.toStringAsFixed(2)}'),
            Expanded(
              child: Slider(
                value: aspectRatio,
                onChanged: (value) {
                  setState(() {
                    aspectRatio = value;
                  });
                },
                min: 1,
                max: 3,
              ),
            )
          ],
        ),
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
        const Gap(20.0),
        FyImageBlock.create(
          context,
          imageUrl:
              'https://dkstatics-public.digikala.com/digikala-adservice-banners/5134638e0bcb2639019b8bb899c224ef3c3fac0b_1684143360.jpg',
          aspectRatio: aspectRatio,
          cta: CTA(
            name: 'Image',
            action: () {
              log('Image Tapped');
            },
          ),
          cornerRadius: cornerRadius,
          type: type,
        ),
      ],
    );
  }
}
