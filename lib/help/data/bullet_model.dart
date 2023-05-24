
import 'help_factory_item_data.dart';

class BulletModel extends HelpFactoryItemData {
  final String type;
  final String style;
  final HelpFactoryItemData content;
  BulletModel({
    required this.type,
    required this.style,
    required this.content,
  });

  factory BulletModel.fromMap(Map<String, dynamic> map) {
    return BulletModel(
      type: map['type'] ?? '',
      style: map['style'] ?? '',
      content: HelpFactoryItemData.fromMap(map['content']),
    );
  }
}
