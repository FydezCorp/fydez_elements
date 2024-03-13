import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../../gap.dart';

class BlogDemo extends StatefulWidget {
  const BlogDemo({Key? key}) : super(key: key);

  @override
  State<BlogDemo> createState() => _BlogDemoState();
}

class _BlogDemoState extends State<BlogDemo> {
  BlogBlockType type = BlogBlockType.swipe;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Blog Block'),
        DropdownButton<BlogBlockType>(
          items: BlogBlockType.values
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
        const Gap(20.0),
        FyBlogBlock.create(
          context,
          type: type,
          contents: BlogContent.createMockPosts(),
          headline: 'Headline Sample',
          onBlogPostTapped: (content) {
            log(content.imageURL);
          },
        )
      ],
    );
  }
}
