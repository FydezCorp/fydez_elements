import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:gap/gap.dart';

class ButtonDemoPage extends StatelessWidget {
  const ButtonDemoPage({Key? key}) : super(key: key);

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
                  icon: FyIcon(context).home,
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
                  icon: FyIcon(context).home,
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
                  icon: FyIcon(context).home,
                  onPressed: () {},
                ),
                const Gap(20.0),
                const Text('Icon Button'),
                FyButton.icon(
                  icon: FyIcon(context).heart,
                  onPressed: () {},
                ),
                const Gap(20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
