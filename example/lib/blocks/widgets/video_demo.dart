import 'dart:developer';

import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class VideoDemo extends StatefulWidget {
  const VideoDemo({
    super.key,
  });

  @override
  State<VideoDemo> createState() => _VideoDemoState();
}

class _VideoDemoState extends State<VideoDemo> {
  VideoBlockType type = VideoBlockType.normal;
  double aspectRatio = 2;
  double cornerRadius = 10.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Image Block'),
        DropdownButton<VideoBlockType>(
          items: VideoBlockType.values
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
        FyVideoBlock.create(
          context,
          videoUrl:
              'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
          aspectRatio: aspectRatio,
          cta: CTA(
            name: 'video',
            action: () {
              log('video Tapped');
            },
          ),
          cornerRadius: cornerRadius,
          type: type,
        ),
      ],
    );
  }
}
