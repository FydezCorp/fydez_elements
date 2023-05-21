
import 'help_factory_item_data.dart';

class TextModel extends HelpFactoryItemData {
  final String type;
  final String style;
  final String content;
  TextModel({
    required this.type,
    required this.style,
    required this.content,
  });
  

 

  factory TextModel.fromMap(Map<String, dynamic> map) {
    return TextModel(
      type: map['type'] ?? '',
      style: map['style'] ?? '',
      content: map['content'] ?? '',
    );
  }
}
