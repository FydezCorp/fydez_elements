import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class DropDownDemoPage extends StatefulWidget {
  const DropDownDemoPage({Key? key}) : super(key: key);

  @override
  State<DropDownDemoPage> createState() => _DropDownDemoPageState();
}

class _DropDownDemoPageState extends State<DropDownDemoPage> {
  DropdownType type = DropdownType.connected;
  int number = 0;
  final numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  double cornerRadius = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DropdownButton(
                  items: DropdownType.values
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e.name),
                          ))
                      .toList(),
                  value: type,
                  onChanged: (value) {
                    setState(() {
                      type = value!;
                    });
                  },
                ),
                Slider(
                  value: cornerRadius,
                  onChanged: (value) {
                    setState(() {
                      cornerRadius = value;
                    });
                  },
                  min: 0,
                  max: 40,
                ),
                FyDropdown.showSimpleDropdown<int>(
                  context,
                  value: number,
                  type: type,
                  cornerRadius: cornerRadius,
                  items: numbers
                      .map(
                          (e) => FyDropdownItem(title: e.toString(), object: e))
                      .toList(),
                  onChange: (value) {
                    log('Value Change: $value');
                    setState(() {
                      number = value!;
                    });
                  },
                ),
                ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Text(
                          'Sample text beneath the dropdown widget number $index'),
                    );
                  },
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
