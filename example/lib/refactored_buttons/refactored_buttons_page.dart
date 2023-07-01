import 'package:example/gap.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

class RefactoredButtonsDemoPage extends StatefulWidget {
  const RefactoredButtonsDemoPage({super.key});

  @override
  State<RefactoredButtonsDemoPage> createState() =>
      _RefactoredButtonsDemoPageState();
}

class _RefactoredButtonsDemoPageState extends State<RefactoredButtonsDemoPage> {
  ButtonState buttonState = ButtonState.active;
  FilledButtonType filledButtonType = FilledButtonType.material;
  OutlinedButtonType outlinedButtonType = OutlinedButtonType.material;
  double cornerRadius = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Row(
                children: [
                  Text('Corner radius: ${cornerRadius.toStringAsFixed(2)}'),
                  Expanded(
                    child: Slider(
                      value: cornerRadius,
                      onChanged: (value) {
                        setState(() {
                          cornerRadius = value;
                        });
                      },
                      min: 0,
                      max: 35,
                    ),
                  ),
                ],
              ),
              DropdownButton<ButtonState>(
                items: ButtonState.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text('Button State: ${e.name}'),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    buttonState = value!;
                  });
                },
                value: buttonState,
              ),
              const Divider(),
              const TitleWidget(
                title: 'Filled Button',
              ),
              DropdownButton<FilledButtonType>(
                items: FilledButtonType.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text('Filled Button Type: ${e.name}'),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    filledButtonType = value!;
                  });
                },
                value: filledButtonType,
              ),
              const Gap(10.0),
              FyFilledButton.create(
                context,
                onPressed: () {},
                title: 'Filled Button',
                cornerRadius: cornerRadius,
                state: buttonState,
              ),
              const Gap(10.0),
              FyFilledButton.create(
                context,
                onPressed: () {},
                title: 'Filled Button with Icon',
                cornerRadius: cornerRadius,
                icon: FyIcon(context).heart,
                state: buttonState,
              ),
              const Divider(),
              const TitleWidget(
                title: 'Outlined Button',
              ),
              DropdownButton<OutlinedButtonType>(
                items: OutlinedButtonType.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text('Outlined Button Type: ${e.name}'),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    outlinedButtonType = value!;
                  });
                },
                value: outlinedButtonType,
              ),
              const Gap(10.0),
              FyOutlinedButton.create(
                context,
                onPressed: () {},
                title: 'Outlined Button',
                cornerRadius: cornerRadius,
                state: buttonState,
              ),
              const Gap(10.0),
              FyOutlinedButton.create(
                context,
                onPressed: () {},
                title: 'Filled Button with Icon',
                cornerRadius: cornerRadius,
                icon: FyIcon(context).heart,
                state: buttonState,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.headlineLarge,
    );
  }
}
