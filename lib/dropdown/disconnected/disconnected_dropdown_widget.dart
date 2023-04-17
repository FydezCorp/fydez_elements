import 'package:flutter/material.dart';

import '../../fydez_elements.dart';

class DisconnectedDropdownWidget<T> extends StatefulWidget {
  final T value;
  final List<FyDropdownItem> items;
  final Function(T? value) onChange;
  final double cornerRadius;
  final String? title;
  const DisconnectedDropdownWidget({
    required this.items,
    required this.onChange,
    required this.value,
    required this.cornerRadius,
    this.title = 'test title',
    Key? key,
  }) : super(key: key);

  @override
  State<DisconnectedDropdownWidget<T>> createState() =>
      _DisconnectedDropdownWidgetState<T>();
}

class _DisconnectedDropdownWidgetState<T>
    extends State<DisconnectedDropdownWidget<T>> {
  bool _opened = false;

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 14, color: Color(0xff949494));
    return LayoutBuilder(builder: (context, constraints) {
      BoxDecoration boxDecoration = BoxDecoration(
        border: Border.all(color: const Color(0xffB4B4B4)),
        borderRadius: BorderRadius.circular(widget.cornerRadius),
      );
      return Stack(
        children: [
          Column(
            children: [
              Ink(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _opened = !_opened;
                    });
                  },
                  splashColor: const Color(0xffF9F9F9),
                  borderRadius: BorderRadius.circular(widget.cornerRadius),
                  child: Container(
                    decoration: boxDecoration,
                    padding: const EdgeInsets.symmetric(vertical: 14),
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
                                color: const Color(0xff585858),
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: _opened,
                child: Container(
                  padding: const EdgeInsets.only(top: 10),
                  margin: const EdgeInsets.only(top: 10),
                  width: constraints.minWidth,
                  height: 150,
                  decoration: boxDecoration,
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
                              padding: const EdgeInsets.symmetric(vertical: 14),
                              child: Center(
                                  child: Text(
                                items[index].title,
                                style: style,
                              ))),
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ],
      );
    });
  }
}
