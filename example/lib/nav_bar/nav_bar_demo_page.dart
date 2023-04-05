import 'package:flutter/material.dart';
import 'package:fydez_elements/bottom_nav_bar/data/nav_bar_effect.dart';
import 'package:fydez_elements/bottom_nav_bar/data/nav_bar_item.dart';
import 'package:fydez_elements/bottom_nav_bar/data/nav_bar_style.dart';
import 'package:fydez_elements/bottom_nav_bar/fy_nav_bar.dart';

class NavBarDemoPage extends StatefulWidget {
  const NavBarDemoPage({Key? key}) : super(key: key);

  @override
  State<NavBarDemoPage> createState() => _NavBarDemoPageState();
}

class _NavBarDemoPageState extends State<NavBarDemoPage> {
  int currentIndex = 0;
  NavBarStyle style = NavBarStyle.bold;
  NavBarEffect effect = NavBarEffect.none;
  bool hasTitle = false;
  double borderRadius = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Style:      '),
                  DropdownButton(
                    value: style,
                    items: NavBarStyle.values
                        .map((e) => DropdownMenuItem(
                              enabled: true,
                              value: e,
                              child: Text(e.name),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        style = value!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Effect:      '),
                  DropdownButton(
                    value: effect,
                    items: NavBarEffect.values
                        .map((e) => DropdownMenuItem(
                              enabled: true,
                              value: e,
                              child: Text(e.name),
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        effect = value!;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                width: 200,
                child: CheckboxListTile(
                  value: hasTitle,
                  onChanged: (value) {
                    setState(() {
                      hasTitle = value!;
                    });
                  },
                  dense: true,
                  enabled: true,
                  title: const Text('Has Title?'),
                ),
              ),
              SizedBox(
                width: 200,
                child: Slider(
                  value: borderRadius,
                  min: 0,
                  max: 50,
                  onChanged: (value) {
                    setState(() {
                      borderRadius = value;
                    });
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: FyBottomNavBar.build(
        style: style,
        effect: effect,
        hasTitle: true,
        cornerRadius: borderRadius,
        items: [
          NavBarItem(Icons.abc_sharp, 'label 1'),
          NavBarItem(Icons.abc_sharp, 'label 2'),
          NavBarItem(Icons.abc_sharp, 'label 3'),
          NavBarItem(Icons.abc_sharp, 'label 4'),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
      ),
    );
  }
}
