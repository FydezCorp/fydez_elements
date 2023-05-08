import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import 'widgets/login_widget.dart';

class LoginElement extends FyElement {
  final List<FyPlugin>? plugins;
  final String loginPageTitle;
  final String loginPageDescription;
  final String loginPageButtonText;
  // ? TODO: Add Type here?

  LoginElement({
    this.plugins,
    required this.loginPageTitle,
    required this.loginPageDescription,
    required this.loginPageButtonText,
  });

  @override
  String get name => 'Login Element';

  @override
  Widget get render => LoginWidget(
        loginPageButtonText: loginPageButtonText,
        loginPageDescription: loginPageDescription,
        loginPageTitle: loginPageTitle,
        plugins: plugins,
      );

  @override
  List<FyPlugin> get supportedPlugins => [];
}
