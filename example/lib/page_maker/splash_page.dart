import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      context.go('/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SplashFyPage.fromMap(
      {
        'image': 'assets/sample-bg.jpg',
        'title': 'Fydez Elements',
      },
    ).build(context);
  }
}
