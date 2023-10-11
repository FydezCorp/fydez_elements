// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../gap.dart';

class ButtonDemoPage extends StatefulWidget {
  const ButtonDemoPage({Key? key}) : super(key: key);

  @override
  State<ButtonDemoPage> createState() => _ButtonDemoPageState();
}

class _ButtonDemoPageState extends State<ButtonDemoPage> {
  double ratio = 3;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                CheckboxListTile(
                  value: loading,
                  onChanged: (value) {
                    setState(() {
                      loading = value!;
                    });
                  },
                  title: const Text('Loading'),
                ),
                const Text('Filled Button'),
                const Gap(10.0),
                FyButton.filled(
                  onPressed: () {},
                  options: FilledButtonOption(text: 'This is Button'),
                  loading: loading,
                ),
                const Gap(10.0),
                FyButton.filled(
                  onPressed: () {},
                  options: FilledButtonOption(
                    text: 'This is Button',
                    icon: Icons.home,
                  ),
                  loading: loading,
                ),
                const Gap(20.0),
                const Text('Outlined Button'),
                const Gap(10.0),
                FyButton.outlined(
                  onPressed: () {},
                  options: OutlinedButtonOption(text: 'This is Button'),
                  loading: loading,
                ),
                const Gap(10.0),
                FyButton.outlined(
                  onPressed: () {},
                  options: OutlinedButtonOption(
                    text: 'This is Button',
                    icon: Iconsax.home,
                  ),
                  loading: loading,
                ),
                const Gap(20.0),
                const Text('Text Button'),
                FyButton.text(
                  onPressed: () {},
                  options: TextButtonOption(text: 'This is Button'),
                  loading: loading,
                ),
                const Gap(10.0),
                FyButton.text(
                  onPressed: () {},
                  options: TextButtonOption(
                    text: 'This is Button',
                    icon: Iconsax.home,
                  ),
                  loading: loading,
                ),
                const Gap(20.0),
                const Text('Icon Button'),
                FyButton.icon(
                  onPressed: () {},
                  options: IconButtonOption(
                    iconColor: Colors.red,
                    icon: Iconsax.home,
                  ),
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
                    onPressed: () {},
                    options: FilledButtonOption(
                      text: 'This is Button',
                      icon: Icons.home,
                    ),
                    loading: loading,
                  ),
                  button2: FyButton.outlined(
                    onPressed: () {},
                    options: OutlinedButtonOption(
                      text: 'Cancel',
                    ),
                    loading: loading,
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
