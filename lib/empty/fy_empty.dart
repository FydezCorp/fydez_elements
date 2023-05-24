import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../const/package_name.dart';

class FyEmpty extends StatelessWidget {
  /// Path of the image. Can be .svg alongside other valid formats (like .png).
  final String imagePath;

  /// Text appearing under the image;
  final String text;

  /// An optional widget that appears under the text (Like a button or whatever).
  final Widget? suffix;

  /// If image is inside package, this should be set to true.
  final bool? isInPackage;

  /// Creates an Empty List or Page Indicator.
  ///
  /// Please note that this widget has ready factory builders.
  const FyEmpty({
    Key? key,
    required this.imagePath,
    required this.text,
    this.suffix,
    this.isInPackage,
  }) : super(key: key);

  /// Creates an instance of [FyEmpty] widget with an image of a cart.
  factory FyEmpty.cart({
    required String text,
    Widget? suffix,
  }) {
    return FyEmpty(
      imagePath: 'assets/images/empty_cart.svg',
      isInPackage: true,
      text: text,
      suffix: suffix,
    );
  }

  /// Creates an instance of [FyEmpty] widget with an image of a notification bell.
  factory FyEmpty.notification({
    required String text,
    Widget? suffix,
  }) {
    return FyEmpty(
      imagePath: 'assets/images/empty_notification.svg',
      isInPackage: true,
      text: text,
      suffix: suffix,
    );
  }

  /// Is our image vector?
  bool _isSvg(String imagePath) {
    if (imagePath.endsWith('.svg')) {
      return true;
    } else {
      return false;
    }
  }

  String? getPackage() {
    if (isInPackage == true) {
      return packageName;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _isSvg(imagePath)
                ? SvgPicture.asset(
                    imagePath,
                    package: getPackage(),
                  )
                : Image.asset(
                    imagePath,
                    package: getPackage(),
                  ),
            const SizedBox(height: 12.0),
            Text(
              text,
              style: context.textTheme.titleSmall!.copyWith(
                color: context.fyColors.textFiveColor,
              ),
              textAlign: TextAlign.center,
            ),
            suffix != null
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: suffix,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
