import 'package:flutter/material.dart';
import 'package:fydez_elements/button/button_loading_widget.dart';

import '../../../const/constants.dart';
import '../../../fydez_elements.dart';
import '../filled_button_factory.dart';

class MaterialFilledButton implements FilledButtonFactory {
  @override
  Widget build({
    required VoidCallback onPressed,
    required String title,
    IconData? icon,
    Color? backgroundColor,
    Color? foregroundColor,
    required double cornerRadius,
    required ButtonState state,
    double? height,
  }) {
    return FilledButtonFactoryWidget(
      onPressed: onPressed,
      title: title,
      icon: icon,
      state: state,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      cornerRadius: cornerRadius,
      height: height,
    );
  }
}

class FilledButtonFactoryWidget extends StatelessWidget {
  const FilledButtonFactoryWidget({
    super.key,
    required this.cornerRadius,
    required this.onPressed,
    required this.title,
    required this.state,
    this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.height,
  });

  final VoidCallback onPressed;
  final String title;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double cornerRadius;
  final double? height;
  final ButtonState state;

  VoidCallback? get _getMethod {
    if (state == ButtonState.deactivated || state == ButtonState.loading) {
      return null;
    } else {
      return onPressed;
    }
  }

  Widget get _getChild {
    if (state == ButtonState.loading) {
      return const ButtonLoadingWidget(
        color: Colors.white,
        size: 15,
      );
    } else {
      return icon == null
          ? Text(title, style: TextStyle(color: foregroundColor))
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  size: 20,
                  color: foregroundColor,
                ),
                const SizedBox(width: 10),
                Text(title, style: TextStyle(color: foregroundColor)),
              ],
            );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Constants.buttonDefaultHeight,
      child: ElevatedButton(
        onPressed: _getMethod,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
        ),
        child: _getChild,
      ),
    );
  }
}
