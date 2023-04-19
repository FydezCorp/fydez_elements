import 'package:flutter/material.dart';

import '../../fydez_elements.dart';

class ModalDropdownWidget<T> extends StatefulWidget {
  final T value;
  final List<FyDropdownItem> items;
  final Function(T? value) onChange;
  final double cornerRadius;
  final String? title;
  final String? subtitle;
  const ModalDropdownWidget({
    required this.items,
    required this.onChange,
    required this.value,
    required this.cornerRadius,
    this.title = 'test title',
    this.subtitle = 'test subtitle',
    Key? key,
  }) : super(key: key);

  @override
  State<ModalDropdownWidget<T>> createState() => _ModalDropdownWidgetState<T>();
}

class _ModalDropdownWidgetState<T> extends State<ModalDropdownWidget<T>> {
  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 14, color: Color(0xff949494));

    void showModal() {
      FyPopup.showPopup(context,
          title: widget.title ?? '',
          subtitle: 'Choose one below',
          hasIcon: false,
          trailing: SizedBox(
            height: 150,
            child: ListView.builder(
              itemBuilder: (context, index) {
                final item = widget.items[index];
                return RadioListTile<T>(
                  value: item.object,
                  contentPadding: EdgeInsets.zero,
                  selected: item.object == widget.value,
                  // secondary: item.object == widget.value
                  //     ? const Text('Selected')
                  //     : const SizedBox(),
                  groupValue: widget.value,
                  onChanged: (value) {
                    Navigator.pop(context);
                    widget.onChange(item.object);
                  },
                  dense: true,
                  title: Text(item.title),
                );
              },
              itemCount: widget.items.length,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
            ),
          ));
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Ink(
        child: InkWell(
          onTap: showModal,
          splashColor: const Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(widget.cornerRadius),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffB4B4B4)),
              borderRadius: BorderRadius.circular(widget.cornerRadius),
            ),
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
                        FyIcon.of(context).arrowDown,
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
      );
    });
  }
}
