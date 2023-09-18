import 'package:example/routes.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> buttonsList = [
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.navBars);
        },
        title: 'Nav Bars',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.textInputs);
        },
        title: 'Text Inputs',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.iconPacks);
        },
        title: 'Icon Packs',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.buttons);
        },
        title: 'Buttons',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.refactoredButtons);
        },
        title: 'refactoredButtons',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.popups);
        },
        title: 'Popups',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.notifier);
        },
        title: 'Notifiers',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.dropdown);
        },
        title: 'Dropdowns',
      ),
      FyFilledButton.create(
        context,
        title: 'Google Maps',
        onPressed: () {
          context.push(FydezDemoRoutes.maps);
        },
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.productGridView);
        },
        title: 'Product Grid iew',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.slider);
        },
        title: 'Slider',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.tiles);
        },
        title: 'Tiles',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.empty);
        },
        title: 'Empty Page!',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.marketItem);
        },
        title: 'Market Item',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.categoryItem);
        },
        title: 'Category Item',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.skeletons);
        },
        title: 'Skeletons',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.cartItem);
        },
        title: 'Cart Item',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.tabbar);
        },
        title: 'Tabbar',
      ),
      FyFilledButton.create(
        context,
        onPressed: () {
          context.push(FydezDemoRoutes.blocks);
        },
        title: 'Blocks!',
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
