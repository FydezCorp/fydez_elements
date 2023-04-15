import 'package:example/gap.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
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
            FyButton.filled(context, title: 'A (Modal)', onPressed: () {
              FyPopup.showPopup(
                context,
                title: 'Title',
                subtitle: 'Subtitle',
                type: PopupType.modal,
                background: bg,
                handle: handle,
                hasIcon: hasIcon,
                icon: FyIcon(context, iconPack: IconPacks.iconsax).home,
                trailing: FyButton.filled(
                  context,
                  title: 'title',
                  onPressed: () {},
                ),
              );
            }),
            const Gap(20),
            FyButton.filled(context, title: 'B (Dialog)', onPressed: () {
              FyPopup.showPopup(
                context,
                title: 'title',
                subtitle: 'subtitle',
                type: PopupType.dialog,
                background: bg,
                handle: handle,
                hasIcon: hasIcon,
                icon: FyIcon(context, iconPack: IconPacks.iconsax).home,
                trailing: FyButton.filled(
                  context,
                  title: 'title',
                  onPressed: () {},
                ),
              );
            }),
          ],
        )),
      ),
    );
  }
}
