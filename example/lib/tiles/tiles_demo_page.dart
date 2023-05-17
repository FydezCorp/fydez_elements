import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class TilesDemoPage extends StatefulWidget {
  const TilesDemoPage({Key? key}) : super(key: key);

  @override
  State<TilesDemoPage> createState() => _TilesDemoPageState();
}

class _TilesDemoPageState extends State<TilesDemoPage> {
  final List<String> strings = ['option 1', 'option 2', 'option 3'];
  String selectedString = 'option 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: strings.length,
            itemBuilder: (context, index) {
              return FyRadioTile.create<String>(
                context,
                title: strings[index],
                subtitle: '${strings[index]} subtitle',
                groupValue: selectedString,
                value: strings[index],
                onChanged: (p0) {
                  setState(() {
                    selectedString = p0!;
                  });
                },
              );
            },
          )
        ],
      )),
    );
  }
}
