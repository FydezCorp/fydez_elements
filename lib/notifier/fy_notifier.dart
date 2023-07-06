import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/notifier/data/notifier_bg_type.dart';

class FyNotifier {
  // TODO: Add Glass Background in the Future.

  static void showSnackBar(
    BuildContext context, {
    required String text,
    SnackBarAction? action,
    Color? backgroundColor,
    double? cornerRadius,
    NotifierBGType? bgType,
    Duration duration = const Duration(seconds: 4),
  }) {
    final finalCornerRadius =
        cornerRadius ?? context.fyParameters.notifierConfiguration.cornerRadius;
    final snackbar = SnackBar(
      content: Text(text),
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
      shape: cornerRadius != null
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(finalCornerRadius),
            )
          : null,
      elevation: 0,
      action: action,
      dismissDirection: DismissDirection.horizontal,
      duration: duration,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  static void showToast(
    BuildContext context, {
    required String text,
    SnackBarAction? action,
    Color? backgroundColor,
    NotifierBGType? bgType,
    Duration duration = const Duration(seconds: 4),
  }) {
    final snackbar = SnackBar(
      content: Text(text),
      behavior: SnackBarBehavior.fixed,
      action: action,
      backgroundColor: backgroundColor,
      elevation: 0,
      duration: duration,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
}
