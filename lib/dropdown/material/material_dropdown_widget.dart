import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../fydez_elements.dart';

class MaterialDropdownWidget<T> extends StatefulWidget {
  final T value;
  final List<FyDropdownItem> items;
  final Function(T? value) onChange;
  final double cornerRadius;
  final String? title;
  final FyInputType textInputType;
  const MaterialDropdownWidget({
    required this.items,
    required this.onChange,
    required this.value,
    required this.cornerRadius,
    required this.textInputType,
    this.title = 'test title',
    Key? key,
  }) : super(key: key);

  @override
  State<MaterialDropdownWidget<T>> createState() =>
      _MaterialDropdownWidgetState<T>();
}

class _MaterialDropdownWidgetState<T> extends State<MaterialDropdownWidget<T>> {
  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontSize: 14, color: context.fyColors.textSixColor);
    return DropdownButton<T>(
      items: widget.items
          .map((e) => DropdownMenuItem<T>(
                value: e.object,
                child: Text(e.title),
              ))
          .toList(),
      onChanged: (value) {
        widget.onChange(value);
      },
      value: widget.value,
      style: style,
      alignment: Alignment.center,
      underline: Container(),
    );
  }
}
