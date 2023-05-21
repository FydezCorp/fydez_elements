
import 'help_factory_item_data.dart';

class BulletEmptyModel extends HelpFactoryItemData {
  final String type;
  final String style;
  final HelpFactoryItemData content;
  BulletEmptyModel({
    required this.type,
    required this.style,
    required this.content,
  });

 

  factory BulletEmptyModel.fromMap(Map<String, dynamic> map) {
    return BulletEmptyModel(
      type: map['type'] ?? '',
      style: map['style'] ?? '',
      content: HelpFactoryItemData.fromMap(map['content']),
    );
  }
}
