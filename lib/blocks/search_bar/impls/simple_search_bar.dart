import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../../fydez_elements.dart';
import '../search_bar_factory.dart';

class SimpleSearchBar implements SearchBarFactory {
  @override
  Widget create({
    required String placeholder,
    required VoidCallback onSearchTapped,
  }) {
    return SimpleSearchBarWidget(
      onSearchTapped: onSearchTapped,
      placeholder: placeholder,
    );
  }
}

class SimpleSearchBarWidget extends StatelessWidget {
  final String placeholder;
  final VoidCallback onSearchTapped;
  const SimpleSearchBarWidget({
    Key? key,
    required this.onSearchTapped,
    required this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onSearchTapped,
      child: Container(
          decoration: BoxDecoration(
            color: context.fyColors.textTwoColor,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          child: Row(
            children: [
              Icon(
                FyIcon(context).search,
                size: 24.0,
                color: context.fyColors.textSevenColor,
              ),
              const SizedBox(width: 7.5),
              Text(
                placeholder,
                style: context.textTheme.titleMedium!.copyWith(
                  color: context.fyColors.textSevenColor,
                ),
              ),
            ],
          )),
    );
  }
}
