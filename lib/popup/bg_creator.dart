import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class BGCreator extends StatelessWidget {
  final Widget child;
  final PopupBG bg;
  const BGCreator({required this.child, required this.bg, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (bg) {
      case PopupBG.normal:
        return child;
      case PopupBG.blur:
        return Builder(builder: (context) {
          return BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: child,
          );
        });
    }
  }
}
