import 'package:example/page_maker/splash/splash_element.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class SplashFyPage implements FyPage {
  final SplashElement element;

  SplashFyPage({
    required this.element,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: element.render,
    );
  }

  @override
  factory SplashFyPage.fromMap(Map<String, dynamic> data) {
    return SplashFyPage(
      element: SplashElement(
        image: data['image'],
        title: data['title'],
      ),
    );
  }
}
