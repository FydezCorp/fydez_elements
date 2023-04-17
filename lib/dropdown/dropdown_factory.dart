import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

abstract class DropdownFactory<T> {
  Widget createDropDown(
    BuildContext context, {
    required T value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
  });

  factory DropdownFactory(DropdownType type) {
    switch (type) {
      case DropdownType.connected:
        return ConnectedDropdown<T>();
      case DropdownType.disconnected:
        return DisconnectedDropdown<T>();
      case DropdownType.modal:
        return ModalDropdown<T>();
    }
  }
}

class ConnectedDropdown<T> implements DropdownFactory<T> {
  @override
  Widget createDropDown(
    BuildContext context, {
    required value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
  }) {
    return ConnectedDropdownWidget(
      items: items,
      onChange: onChange,
      value: value,
      cornerRadius: cornerRadius,
    );
  }
}

class ConnectedDropdownWidget<T> extends StatefulWidget {
  final T value;
  final List<FyDropdownItem> items;
  final Function(T? value) onChange;
  final double cornerRadius;
  const ConnectedDropdownWidget({
    required this.items,
    required this.onChange,
    required this.value,
    required this.cornerRadius,
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
    return LayoutBuilder(builder: (context, constraints) {
      return Ink(
        child: InkWell(
          onTap: _opened == false
              ? () {
                  setState(() {
                    _opened = !_opened;
                  });
                }
              : null,
          borderRadius: BorderRadius.circular(widget.cornerRadius),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(widget.cornerRadius),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.value.toString()),
                    const SizedBox(width: 10),
                    Icon(FyIcon(context).home),
                  ],
                ),
                Visibility(
                  visible: _opened,
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    width: constraints.minWidth,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: widget.items.length,
                      itemBuilder: (context, index) {
                        final items = widget.items;
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _opened = false;
                            });
                            widget.onChange(items[index].object);
                          },
                          borderRadius:
                              BorderRadius.circular(widget.cornerRadius),
                          child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Center(child: Text(items[index].title))),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

class DisconnectedDropdown<T> implements DropdownFactory<T> {
  @override
  Widget createDropDown(
    BuildContext context, {
    required value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
  }) {
    return Container();
  }
}

class ModalDropdown<T> implements DropdownFactory<T> {
  @override
  Widget createDropDown(
    BuildContext context, {
    required value,
    required List<FyDropdownItem> items,
    required Function(T? value) onChange,
    required double cornerRadius,
  }) {
    return Container();
  }
}
