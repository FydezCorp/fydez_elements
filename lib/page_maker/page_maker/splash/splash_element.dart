import 'package:flutter/src/widgets/framework.dart';
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
  Widget get render => throw UnimplementedError();

  @override
  List<FyPlugin> get supportedPlugins => [];
  
  @override
  FyElement fromMap(Map<String, dynamic> data) {
    return SplashElement(
      image: data['image'],
      title: data['title'],
    );
  }
}
