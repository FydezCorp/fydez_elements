import 'package:flutter/material.dart';
import 'package:fydez_elements/button/button_loading_widget.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../../const/constants.dart';
import '../../../fydez_elements.dart';
import '../outlined_button_factory.dart';

class MaterialOutlinedButton implements OutlinedButtonFactory {
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
    return OutlinedMaterialButtonFactoryWidget(
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

class OutlinedMaterialButtonFactoryWidget extends StatelessWidget {
  const OutlinedMaterialButtonFactoryWidget({
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
      child: OutlinedButton(
        onPressed: _getMethod,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          foregroundColor: context.colorScheme.primary,
          elevation: 0,
          side: BorderSide(color: context.colorScheme.primary, width: 1.0),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        child: _getChild(context),
      ),
    );
  }
}
