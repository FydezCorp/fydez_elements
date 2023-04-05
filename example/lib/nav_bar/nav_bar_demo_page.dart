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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Text(index.toString());
        },
      ),
      bottomNavigationBar: FyBottomNavBar.build(
        style: NavBarStyle.bold,
        effect: NavBarEffect.line,
        hasTitle: true,
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
