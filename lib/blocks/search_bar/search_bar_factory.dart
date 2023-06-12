import 'package:flutter/material.dart';
import 'package:fydez_elements/blocks/search_bar/data/search_bar_type.dart';

import 'impls/simple_search_bar.dart';

abstract class SearchBarFactory {
  Widget create({
    required String placeholder,
    required VoidCallback onSearchTapped,
  });

  factory SearchBarFactory({required SearchBarType type}) {
    switch (type) {
      case SearchBarType.simple:
        return SimpleSearchBar();
    }
  }
}

