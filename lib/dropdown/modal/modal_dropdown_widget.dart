import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../fydez_elements.dart';
import '../widgets/dropdown_button_widget.dart';

class ModalDropdownWidget<T> extends StatefulWidget {
  final T value;
  final List<FyDropdownItem> items;
  final Function(T? value) onChange;
  final double cornerRadius;
  final String? title;
  final String? subtitle;
  final FyInputType textInputType;
  const ModalDropdownWidget({
    required this.items,
    required this.onChange,
    required this.value,
    required this.cornerRadius,
    required this.textInputType,
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
    final style = TextStyle(fontSize: 14, color: context.fyColors.textSixColor);

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

    return LayoutBuilder(
      builder: (context, constraints) {
        return DropdownButtonWidget(
          onTap: showModal,
          cornerRadius: widget.cornerRadius,
          textInputType: widget.textInputType,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.value.toString(),
                      style: style,
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      FyIcon(context).arrowDown,
                      color: context.fyColors.textEightColor,
                      size: 24,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
