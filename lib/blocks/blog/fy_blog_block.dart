import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/blog/blog_factory.dart';
import 'package:fydez_elements/blocks/blog/data/blog_block_type.dart';

import 'data/blog_content.dart';

class FyBlogBlock {
  static Widget create(
    BuildContext context, {
    required List<BlogContent> contents,
    required Function(BlogContent content) onBlogPostTapped, 
    String? headline,
    BlogBlockType? type,
  }) {
    final finalType = type ?? BlogBlockType.swipe;
    return BlogFactory(type: finalType).create(
      context,
      contents: contents,
      headline: headline,
      onBlogPostTapped: onBlogPostTapped, 
    );
  }
}
