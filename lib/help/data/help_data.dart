import 'help_item.dart';

class HelpData {
  final int id;
  final String title;
  final String description;
  final List<HelpItem> items;
  HelpData({
    required this.id,
    required this.title,
    required this.description,
    required this.items,
  });

  factory HelpData.fromMap(Map<String, dynamic> map) {
    return HelpData(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      items: List<HelpItem>.from(map['items']?.map((x) => HelpItem.fromMap(x))),
    );
  }
}
