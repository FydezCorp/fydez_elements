import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class TextBlockDemo extends StatefulWidget {
  const TextBlockDemo({Key? key}) : super(key: key);

  @override
  State<TextBlockDemo> createState() => _TextBlockDemoState();
}

class _TextBlockDemoState extends State<TextBlockDemo> {
  TextBlockType type = TextBlockType.normal;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Text Block'),
        DropdownButton<TextBlockType>(
          items: TextBlockType.values
              .map((e) => DropdownMenuItem(
                    value: e,
                    child: Text(e.name),
                  ))
              .toList(),
          onChanged: (value) {
            setState(() {
              type = value!;
            });
          },
          value: type,
        ),
        FyTextBlock.create(context,
            title: 'Text title',
            description:
                'Lorem ipsum is a really long text that has no meaning and is used to fill space and stuff. Lorem ipsum is a really long text that has no meaning and is used to fill space and stuff. Lorem ipsum is a really long text that has no meaning and is used to fill space and stuff.')
      ],
    );
  }
}
