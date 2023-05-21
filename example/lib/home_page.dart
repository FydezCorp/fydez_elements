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
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.iconPacks);
        },
        child: const Text('Icon Packs'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.buttons);
        },
        child: const Text('Buttons'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.popups);
        },
        child: const Text('Popups'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.notifier);
        },
        child: const Text('Notifiers'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.dropdown);
        },
        child: const Text('Dropdowns'),
      ),
      ElevatedButton(
        child: const Text('Google Maps'),
        onPressed: () {
          context.push(FydezDemoRoutes.maps);
        },
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.productGridView);
        },
        child: const Text('Product Grid View'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.slider);
        },
        child: const Text('Slider'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.tiles);
        },
        child: const Text('Tiles'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.empty);
        },
        child: const Text('Empty Page!'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.marketItem);
        },
        child: const Text('Market Item'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.categoryItem);
        },
        child: const Text('Category Item'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.skeletons);
        },
        child: const Text('Skeletons'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.cartItem);
        },
        child: const Text('Cart Item'),
      ),
      ElevatedButton(
        onPressed: () {
          context.push(FydezDemoRoutes.tabbar);
        },
        child: const Text('Tabbar'),
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
