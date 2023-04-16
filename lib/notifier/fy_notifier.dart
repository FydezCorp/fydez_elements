import 'package:flutter/material.dart';

class FyNotifier {
  static void showSnackBar(
    BuildContext context, {
    required String text,
    SnackBarAction? action,
    Color? backgroundColor,
    double? cornerRadius,
    Duration duration = const Duration(seconds: 4),
  }) {
    final snackbar = SnackBar(
      content: Text(text),
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor,
      shape: cornerRadius != null
          ? RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(cornerRadius),
            )
          : null,
      elevation: 3,
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