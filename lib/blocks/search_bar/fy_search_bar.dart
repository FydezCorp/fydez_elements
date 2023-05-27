import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/search_bar/data/search_bar_type.dart';
import 'package:fydez_elements/blocks/search_bar/search_bar_factory.dart';

class FySearchBar {
  static Widget create(
    BuildContext context, {
    required String placeholder,
    required VoidCallback onSearchTapped,
    required SearchBarType type,
  }) {
    return SearchBarFactory(type: type).create(
      placeholder: placeholder,
      onSearchTapped: onSearchTapped,
    );
  }
}
