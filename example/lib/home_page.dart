import 'package:example/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> buttonsList = [
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.navBars);
        },
        child: const Text('Nav Bars'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.textInputs);
        },
        child: const Text('Text Inputs'),
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: buttonsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: buttonsList[index],
            );
          },
        ),
      ),
    );
  }
}
