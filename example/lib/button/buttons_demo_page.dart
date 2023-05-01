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
                const Text('Filled Button'),
                const Gap(10.0),
                FyButtonFactory.create(
                  onPressed: () {},
                  style: ButtonDesignStyle.filled,
                  options: FilledButtonOption(text: 'This is Button'),
                ),
                const Gap(10.0),
                FyButtonFactory.create(
                  onPressed: () {},
                  style: ButtonDesignStyle.filled,
                  options: FilledButtonOption(
                    text: 'This is Button',
                    icon: Icons.home,
                  ),
                ),
                const Gap(20.0),
                const Text('Outlined Button'),
                const Gap(10.0),
                FyButtonFactory.create(
                  onPressed: () {},
                  style: ButtonDesignStyle.outlined,
                  options: OutlinedButtonOption(text: 'This is Button'),
                ),
                const Gap(10.0),
                FyButtonFactory.create(
                  onPressed: () {},
                  style: ButtonDesignStyle.outlined,
                  options: OutlinedButtonOption(
                    text: 'This is Button',
                    icon: Iconsax.home,
                  ),
                ),
                const Gap(20.0),
                const Text('Text Button'),
                FyButtonFactory.create(
                  onPressed: () {},
                  style: ButtonDesignStyle.text,
                  options: TextButtonOption(text: 'This is Button'),
                ),
                const Gap(10.0),
                FyButtonFactory.create(
                  onPressed: () {},
                  style: ButtonDesignStyle.text,
                  options: TextButtonOption(
                    text: 'This is Button',
                    icon: Iconsax.home,
                  ),
                ),
                const Gap(20.0),
                const Text('Icon Button'),
                FyButtonFactory.create(
                  onPressed: () {},
                  style: ButtonDesignStyle.icon,
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
                  button1: FyButtonFactory.create(
                    onPressed: () {},
                    style: ButtonDesignStyle.filled,
                    options: FilledButtonOption(
                      text: 'This is Button',
                      icon: Icons.home,
                    ),
                  ),
                  button2: FyButtonFactory.create(
                    onPressed: () {},
                    style: ButtonDesignStyle.outlined,
                    options: OutlinedButtonOption(
                      text: 'Cancel',
                    ),
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
