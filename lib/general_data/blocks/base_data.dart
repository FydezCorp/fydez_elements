import 'package:flutter/material.dart';

import 'data/search_bar_data.dart';

abstract class BaseData {
  static fromMap(Map<String, dynamic> map) {
    switch (map['type']) {
      case 'search_bar':
        return SearchBarData.fromMap(map);

      default:
        return const SizedBox();
    }
  } 
}
