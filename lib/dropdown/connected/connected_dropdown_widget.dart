import 'package:flutter/material.dart';
import 'package:fydez_elements/dropdown/widgets/dropdown_button_widget.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../fydez_elements.dart';

class ConnectedDropdownWidget<T> extends StatefulWidget {
  final T value;
  final List<FyDropdownItem> items;
  final Function(T? value) onChange;
  final double cornerRadius;
  final String? title;
  final FyInputType textInputType;
  const ConnectedDropdownWidget({
    required this.items,
    required this.onChange,
    required this.value,
    required this.cornerRadius,
    required this.textInputType,
    this.title = 'test title',
    Key? key,
  }) : super(key: key);

  @override
  State<ConnectedDropdownWidget<T>> createState() =>
      _ConnectedDropdownWidgetState<T>();
}

class _ConnectedDropdownWidgetState<T>
    extends State<ConnectedDropdownWidget<T>> {
  bool _opened = false;

  @override
  Widget build(BuildContext context) {
    final style = TextStyle(fontSize: 14, color: context.fyColors.textSixColor);
    return LayoutBuilder(builder: (context, constraints) {
      return DropdownButtonWidget(
        textInputType: widget.textInputType,
        onTap: dropdownMethod,
        cornerRadius: widget.cornerRadius,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.value.toString(),
                    style: style,
                  ),
                  const SizedBox(width: 10),
                  Icon(
                    _opened
                        ? FyIcon(context).arrowUp
                        : FyIcon(context).arrowDown,
                    color: context.fyColors.textEightColor,
                    size: 24,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: _opened,
              child: Container(
                padding: const EdgeInsets.only(top: 10),
                width: constraints.minWidth,
                height: 150,
                child: ListView.builder(
                  // shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: widget.items.length,
                  itemBuilder: (context, index) {
                    final items = widget.items;
                    return Ink(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _opened = false;
                          });
                          widget.onChange(items[index].object);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 16.0,
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Text(
                                  items[index].title,
                                  style: style,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );
    });
  }

  void dropdownMethod() {
    setState(() {
      _opened = !_opened;
    });
  }
}
