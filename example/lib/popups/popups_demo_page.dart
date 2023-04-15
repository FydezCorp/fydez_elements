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
            FyButton.filled(context, title: 'A (Modal)', onPressed: () {
              FyPopup.showPopup(
                context,
                title: 'title',
                subtitle: 'subtitle',
                type: PopupType.modal,
                background: bg,
                handle: handle,
                hasIcon: false,
              );
            }),
            FyButton.filled(context, title: 'B (Dialog)', onPressed: () {
              FyPopup.showPopup(
                context,
                title: 'title',
                subtitle: 'subtitle',
                type: PopupType.dialog,
                background: bg,
                handle: PopupHandle.outside,
                hasIcon: false,
              );
            }),
          ],
        )),
      ),
    );
  }
}
