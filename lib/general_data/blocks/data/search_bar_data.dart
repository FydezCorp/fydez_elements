import 'dart:convert';

import 'package:fydez_elements/fydez_elements.dart';

import '../base_data.dart';

class SearchBarData extends BaseData {
  final String placeholder;
  final SearchBarType style;

  SearchBarData({
    required this.placeholder,
    required this.style,
  });

  /// Sample Data
  /// {
  ///     "type": "search_bar",
  ///     "placeHolder": "Search Product",
  ///     "style": "simple"
  /// }

  factory SearchBarData.fromMap(Map<String, dynamic> map) {
    return SearchBarData(
      placeholder: map['placeholder'] as String,
      style: SearchBarType.values.firstWhere(
        (element) => element.name == '${map['style']}',
      ),
    );
  }

  factory SearchBarData.fromJson(String source) =>
      SearchBarData.fromMap(json.decode(source) as Map<String, dynamic>);
}
