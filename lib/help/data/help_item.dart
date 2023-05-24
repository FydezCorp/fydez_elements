import 'help_factory_item_data.dart';

class HelpItem {
  final String title;
  List<HelpFactoryItemData> items;
  HelpItem({
    required this.title,
    required this.items,
  });

  
  factory HelpItem.fromMap(Map<String, dynamic> map) {
    return HelpItem(
      title: map['title'] ?? '',
      items: List<HelpFactoryItemData>.from(map['items']?.map((x) => HelpFactoryItemData.fromMap(x))),
    );
  }

}
