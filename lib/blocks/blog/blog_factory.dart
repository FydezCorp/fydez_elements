import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/blog/impls/swipe_blog_factory.dart';
import 'package:fydez_elements/fydez_elements.dart';

abstract class BlogFactory {
  Widget create(
    BuildContext context, {
    required List<BlogContent> contents,
    String? headline,
  });

  factory BlogFactory({required BlogBlockType type}) {
    return SwipeBlogFactory();
  }
}
