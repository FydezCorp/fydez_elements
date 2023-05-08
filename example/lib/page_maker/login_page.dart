// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loginPageData = {
      'element_type': 'LoginElement 001',
      'page_type': "SingleElementFyPage",
      'loginPageTitle': 'loginPageTitle',
      'loginPageDescription': 'loginPageDescription',
      'loginPageButtonText': 'loginPageButtonText',
    };
    return PageSerializer.getPageFromMap(loginPageData).build(context);
  }
}
