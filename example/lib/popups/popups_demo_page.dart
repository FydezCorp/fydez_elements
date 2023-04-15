import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class PopUpDemoPage extends StatefulWidget {
  const PopUpDemoPage({Key? key}) : super(key: key);

  @override
  State<PopUpDemoPage> createState() => _PopUpDemoPageState();
}

class _PopUpDemoPageState extends State<PopUpDemoPage> {
  PopupHandle handle = PopupHandle.outside;
  PopupBG bg = PopupBG.normal;
  bool hasIcon = true;
  PopupType type = PopupType.dialog;
  double cornerRadius = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              DropdownButton(
                items: PopupType.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text('${e.value} (${e.name})'),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    type = value!;
                  });
                },
                value: type,
              ),
              DropdownButton(
                items: PopupHandle.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    handle = value!;
                  });
                },
                value: handle,
              ),
              DropdownButton(
                items: PopupBG.values
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    bg = value!;
                  });
                },
                value: bg,
              ),
              CheckboxListTile(
                value: hasIcon,
                onChanged: (value) {
                  setState(() {
                    hasIcon = value!;
                  });
                },
                title: const Text('Has icon?'),
              ),
              Row(
                children: [
                  Text('Corner Radius ${cornerRadius.toStringAsFixed(2)}'),
                  Expanded(
                    child: Slider(
                      value: cornerRadius,
                      onChanged: ((value) {
                        setState(() {
                          cornerRadius = value;
                        });
                      }),
                      label: 'Corner Radius',
                      min: 0,
                      max: 35,
                    ),
                  ),
                ],
              ),
              FyButton.filled(context, title: 'Show ${type.name}!',
                  onPressed: () {
                FyPopup.showPopup(
                  context,
                  title: 'Title',
                  subtitle: 'Subtitle',
                  type: type,
                  background: bg,
                  handle: handle,
                  hasIcon: hasIcon,
                  cornerRadius: cornerRadius,
                  icon: FyIcon(context, iconPack: IconPacks.iconsax).home,
                  trailing: FyButton.filled(
                    context,
                    title: 'title',
                    onPressed: () {},
                  ),
                );
              }),
            ],
          ),
        )),
      ),
    );
  }
}
