import 'package:flutter/material.dart';
import 'package:fydez_elements/button/button_loading_widget.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

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
    return FilledMaterialButtonFactoryWidget(
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

class FilledMaterialButtonFactoryWidget extends StatelessWidget {
  const FilledMaterialButtonFactoryWidget({
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

  Widget _getChild(BuildContext context) {
    if (state == ButtonState.loading) {
      return ButtonLoadingWidget(
        color: foregroundColor ?? context.theme.primaryColor,
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
      child: FilledButton(
        onPressed: _getMethod,
        style: FilledButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: foregroundColor,
          ),
        ),
        child: _getChild(context),
      ),
    );
  }
}
