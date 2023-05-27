import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

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
  double cornerRadius = 15;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey.shade200,
      extendBody: true,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
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
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Corner Radius (${cornerRadius.toStringAsFixed(2)})'),
                          Slider(
                            value: cornerRadius,
                            min: 0,
                            max: 50,
                            onChanged: (value) {
                              setState(() {
                                cornerRadius = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 500,
                      itemBuilder: (context, index) {
                        return Container(
                          width: double.infinity,
                          height: 50,
                          color: Color(int.parse(
                              '0xff${index + 10}${index + 50}${index + 50}')),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: FyBottomNavBar.createNavBar(
                context,
                effect: effect,
                style: style,
                hasTitle: hasTitle,
                cornerRadius: cornerRadius,
                items: [
                  NavBarItem(
                    icon: Icons.abc_sharp,
                    label: 'label 1',
                    activeIcon: Icons.done_all,
                  ),
                  NavBarItem(
                    icon: Icons.abc_sharp,
                    label: 'label 2',
                    activeIcon: Icons.done_all,
                  ),
                  NavBarItem(
                    icon: Icons.abc_sharp,
                    label: 'label 3',
                    activeIcon: Icons.done_all,
                  ),
                  NavBarItem(
                    icon: Icons.abc_sharp,
                    label: 'label 4',
                    activeIcon: Icons.done_all,
                  ),
                ],
                onTap: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                },
                currentIndex: currentIndex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
