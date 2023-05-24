
import 'help_factory_item_data.dart';

class ColumnModel extends HelpFactoryItemData {
  final String type;
  final List<HelpFactoryItemData> items;
  ColumnModel({
    required this.type,
    required this.items,
  });

  factory ColumnModel.fromMap(Map<String, dynamic> map) {
    return ColumnModel(
      type: map['type'] ?? '',
      items: List<HelpFactoryItemData>.from(
          map['items']?.map((x) => HelpFactoryItemData.fromMap(x))),
    );
  }
}
