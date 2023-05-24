
import 'help_factory_item_data.dart';

class RichModel extends HelpFactoryItemData {
  final String type;
  final String style;
  final List<HelpFactoryItemData> items;
  RichModel({
    required this.type,
    required this.style,
    required this.items,
  });

  

  factory RichModel.fromMap(Map<String, dynamic> map) {
    return RichModel(
      type: map['type'] ?? '',
      style: map['style'] ?? '',
      items: List<HelpFactoryItemData>.from(map['items']?.map((x) => HelpFactoryItemData.fromMap(x))),
    );
  }
}
