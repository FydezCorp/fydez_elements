import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class LoginWidget extends StatefulWidget {
  final List<FyPlugin>? plugins;
  final String loginPageTitle;
  final String loginPageDescription;
  final String loginPageButtonText;

  const LoginWidget({
    Key? key,
    required this.loginPageTitle,
    required this.loginPageButtonText,
    required this.loginPageDescription,
    this.plugins,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FyTextInput(
          controller: userNameController,
          label: 'User Name',
          hint: 'John Doe',
          type: InputType.simple,
        ),
        const SizedBox(height: 20),
        FyTextInput(
          controller: passwordController,
          label: 'Password',
          hint: '*************',
          type: InputType.secure,
        ),
        Text(number.toString()),
        const SizedBox(height: 20),
        FyButton.create(
          style: ButtonDesignStyle.filled,
          onPressed: () {
            setState(() {
              number++;
            });
          },
          options: FilledButtonOption(
            text: widget.loginPageButtonText,
          ),
        )
      ],
    );
  }
}
