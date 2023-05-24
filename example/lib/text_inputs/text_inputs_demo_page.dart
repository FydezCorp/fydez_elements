import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

import '../gap.dart';

class TextInputsDemoPage extends StatefulWidget {
  const TextInputsDemoPage({super.key});

  @override
  State<TextInputsDemoPage> createState() => _TextInputsDemoPageState();
}

class _TextInputsDemoPageState extends State<TextInputsDemoPage> {
  bool _enabled = true;

  double cornerRadius = 0;
  FyInputType type = FyInputType.A;

  final _formKey = GlobalKey<FormState>();

  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const Gap(14),
                DropdownButton<FyInputType>(
                  items: FyInputType.values
                      .map((type) => DropdownMenuItem(
                            value: type,
                            child: Text(type.toString()),
                          ))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      type = value!;
                    });
                  },
                  value: type,
                ),
                const Gap(14),
                Row(
                  children: [
                    Text('Corner Radius: ${cornerRadius.toStringAsFixed(2)}'),
                    Expanded(
                      child: Slider(
                        value: cornerRadius,
                        onChanged: (value) {
                          setState(() {
                            cornerRadius = value;
                          });
                        },
                        min: 0,
                        max: 15,
                      ),
                    )
                  ],
                ),
                const Gap(14),
                FyTextInput.create(
                  context,
                  type: type,
                  controller: _controller1,
                  label: 'Simple',
                  hint: 'This is simple!',
                  enabled: _enabled,
                  validator: _sampleValidator,
                  cornerRadius: cornerRadius,
                ),
                const Gap(14),
                FyTextInput.create(
                  context,
                  type: type,
                  controller: _controller2,
                  mode: InputMode.numeric,
                  label: 'Numeric',
                  hint: 'This is numeric!',
                  enabled: _enabled,
                  validator: _sampleValidator,
                  cornerRadius: cornerRadius,
                ),
                const Gap(14),
                FyTextInput.create(
                  context,
                  type: type,
                  controller: _controller3,
                  mode: InputMode.long,
                  label: 'Long Text',
                  hint: 'This is really really long!',
                  enabled: _enabled,
                  validator: _sampleValidator,
                  cornerRadius: cornerRadius,
                ),
                const Gap(14),
                FyTextInput.create(
                  context,
                  type: type,
                  controller: _controller4,
                  mode: InputMode.secure,
                  label: 'Secure Text',
                  hint: '********',
                  enabled: _enabled,
                  validator: _sampleValidator,
                  cornerRadius: cornerRadius,
                ),
                const Gap(25),
                CheckboxListTile(
                  value: _enabled,
                  onChanged: (value) {
                    setState(() {
                      _enabled = value!;
                    });
                  },
                  title: const Text('Enabled?'),
                ),
                const Gap(15),
                ElevatedButton(
                  onPressed: () {
                    _formKey.currentState!.validate();
                  },
                  child: const Text('Show Failed State'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _sampleValidator(text) {
    if (text!.isEmpty) {
      return 'Some Error Message!';
    }
    return null;
  }
}
