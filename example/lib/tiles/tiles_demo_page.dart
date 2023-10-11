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
  bool option1 = false;
  bool option2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const Text(
            'Radio Tiles',
            style: TextStyle(fontSize: 24),
          ),
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
          ),
          const Text(
            'Checkbox Tiles',
            style: TextStyle(fontSize: 24),
          ),
          FyCheckboxTile.create(
            context,
            title: 'Option 1',
            value: option1,
            onChanged: (p0) {
              setState(() {
                option1 = !option1;
              });
            },
          ),
          FyCheckboxTile.create(
            context,
            title: 'Option 2',
            subtitle: 'Sample subtitle!',
            value: option2,
            onChanged: (p0) {
              setState(() {
                option2 = !option2;
              });
            },
          ),
          const FyExpansionTile(
            question: 'text 1',
            answer: Text('data'),
          )
        ],
      )),
    );
  }
}
