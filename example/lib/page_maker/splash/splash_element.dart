import 'package:example/page_maker/splash/widgets/splash_widget.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class SplashElement extends FyElement {
  final String image;
  final String title;

  SplashElement({
    required this.image,
    required this.title,
  });

  @override
  String get name => 'Splash Element';

  @override
  Widget get render => SplashWidget(image: image, name: name);

  @override
  List<FyPlugin> get supportedPlugins => [];

  @override
  FyElement fromJson(Map<String, dynamic> data) {
    return SplashElement(
      image: data['image'],
      title: data['title'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
    };
  }
}
