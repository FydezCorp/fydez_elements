import 'package:flutter/material.dart';

import '../../../const/constants.dart';
import '../../../fydez_elements.dart';
import '../icon_button_factory.dart';

class MaterialIconButton implements IconButtonFactory {
  @override
  Widget build({
    required VoidCallback onPressed,
    required IconData icon,
    Color? backgroundColor,
    Color? foregroundColor,
    required ButtonState state,
    double? iconSize,
    double? height,
  }) {
    return IconMaterialButtonFactoryWidget(
      onPressed: onPressed,
      icon: icon,
      state: state,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      height: height,
      iconSize: iconSize,
    );
  }
}

class IconMaterialButtonFactoryWidget extends StatelessWidget {
  const IconMaterialButtonFactoryWidget({
    super.key,
    required this.onPressed,
    required this.state,
    required this.icon,
    this.backgroundColor,
    this.foregroundColor,
    this.height,
    this.iconSize,
  });

  final VoidCallback onPressed;
  final IconData icon;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? height;
  final ButtonState state;
  final double? iconSize;

  VoidCallback? get _getMethod {
    if (state == ButtonState.deactivated || state == ButtonState.loading) {
      return null;
    } else {
      return onPressed;
    }
  }

  // Widget _getChild(BuildContext context) {
  //   if (state == ButtonState.loading) {
  //     return ButtonLoadingWidget(
  //       color: foregroundColor ?? context.theme.primaryColor,
  //       size: 15,
  //     );
  //   } else {
  //     return icon == null
  //         ? Text(title, style: TextStyle(color: foregroundColor))
  //         : Row(
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               Icon(
  //                 icon,
  //                 size: 20,
  //                 color: foregroundColor,
  //               ),
  //               const SizedBox(width: 10),
  //               Text(title, style: TextStyle(color: foregroundColor)),
  //             ],
  //           );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? Constants.buttonDefaultHeight,
      child: IconButton(
        onPressed: _getMethod,
        style: IconButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        ),
        icon: Icon(
          icon,
          size: iconSize ?? 24,
          color: foregroundColor,
        ),
      ),
    );
  }
}
