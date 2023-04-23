import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class NotifierDemoPage extends StatefulWidget {
  const NotifierDemoPage({Key? key}) : super(key: key);

  @override
  State<NotifierDemoPage> createState() => _NotifierDemoPageState();
}

class _NotifierDemoPageState extends State<NotifierDemoPage> {
  final colors = [
    Colors.green,
    Colors.orange,
    Colors.red,
    Colors.black,
  ];
  double cornerRadius = 10;
  int seconds = 3;
  Color selectedColor = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              DropdownButton(
                  value: selectedColor,
                  items: colors
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Container(
                              width: 100,
                              height: 20,
                              color: e,
                            ),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedColor = value!;
                    });
                  }),
              Row(
                children: [
                  Text('Duration ($seconds)'),
                  Expanded(
                    child: Slider(
                      value: seconds.toDouble(),
                      onChanged: (value) {
                        setState(() {
                          seconds = value.toInt();
                        });
                      },
                      divisions: 9,
                      min: 1,
                      max: 10,
                    ),
                  ),
                ],
              ),
              FyButton.filled(
                context,
                title: 'Toast',
                onPressed: () {
                  FyNotifier.showToast(
                    context,
                    text:
                        'Some long long long text that becomes multiline to mess with our code!',
                    backgroundColor: selectedColor,
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {},
                      textColor: Colors.white,
                    ),
                    duration: Duration(seconds: seconds),
                  );
                },
              ),
              const Divider(),
              Row(
                children: [
                  Text('Corner Radius (${cornerRadius.toStringAsFixed(2)})'),
                  Expanded(
                    child: Slider(
                      value: cornerRadius,
                      onChanged: (value) {
                        setState(() {
                          cornerRadius = value;
                        });
                      },
                      min: 0,
                      max: 35,
                    ),
                  ),
                ],
              ),
              FyButton.filled(
                context,
                title: 'Snack bar',
                onPressed: () {
                  FyNotifier.showSnackBar(
                    context,
                    text:
                        'Some long long long text that becomes multiline to mess with our code!',
                    backgroundColor: selectedColor,
                    cornerRadius: cornerRadius,
                    duration: Duration(seconds: seconds),
                    action: SnackBarAction(
                      label: 'Action',
                      onPressed: () {},
                      textColor: Colors.white,
                    ),
                  );
                },
              ),
              // ListView.builder(
              //   shrinkWrap: true,
              //   physics: const NeverScrollableScrollPhysics(),
              //   itemCount: 50,
              //   itemBuilder: (context, index) {
              //     return const Center(child: Text('Testy Test! Testy Test!'));
              //   },
              // ),
            ],
          ),
        ),
      )),
    );
  }
}
