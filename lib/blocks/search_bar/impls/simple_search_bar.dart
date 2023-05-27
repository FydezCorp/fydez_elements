import 'package:flutter/material.dart';

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
      child: Container(),
    );
  }
}
