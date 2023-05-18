import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../gap.dart';

class ButtonDemoPage extends StatefulWidget {
  const ButtonDemoPage({Key? key}) : super(key: key);

  @override
  State<ButtonDemoPage> createState() => _ButtonDemoPageState();
}

class _ButtonDemoPageState extends State<ButtonDemoPage> {
  double ratio = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const Text('Filled Button'),
                FyButton.filled(
                  context,
                  title: 'Filled Button',
                  onPressed: () {},
                ),
                const Gap(10.0),
                FyButton.filled(
                  context,
                  title: 'Filled Icon Button',
                  icon: context.fyIcons.home,
                  onPressed: () {},
                ),
                const Gap(20.0),
                const Text('Outlined Button'),
                FyButton.outlined(
                  context,
                  title: 'Outlined Button',
                  onPressed: () {},
                ),
                const Gap(10.0),
                FyButton.outlined(
                  context,
                  title: 'Outlined Icon Button',
                  icon: context.fyIcons.home,
                  onPressed: () {},
                ),
                const Gap(20.0),
                const Text('Text Button'),
                FyButton.text(
                  context,
                  title: 'Text Button',
                  onPressed: () {},
                ),
                const Gap(10.0),
                FyButton.text(
                  context,
                  title: 'Text Icon Button',
                  icon: context.fyIcons.home,
                  onPressed: () {},
                ),
                const Gap(20.0),
                const Text('Icon Button'),
                FyButton.icon(
                  icon: context.fyIcons.heart,
                  onPressed: () {},
                ),
                const Gap(20.0),
                const Text('Flex!'),
                Row(
                  children: [
                    Text('Ratio (${ratio.toStringAsFixed(2)})  '),
                    Expanded(
                      child: Slider(
                        value: ratio,
                        onChanged: (value) {
                          setState(() {
                            ratio = value;
                          });
                        },
                        min: 1,
                        max: 5,
                        divisions: 8,
                      ),
                    )
                  ],
                ),
                FyFlex(
                  button1: FyButton.filled(
                    context,
                    title: 'Filled Icon Button',
                    icon: context.fyIcons.home,
                    onPressed: () {},
                  ),
                  button2: FyButton.outlined(
                    context,
                    title: 'Cancel',
                    onPressed: () {},
                  ),
                  ratio: ratio,
                  gap: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
