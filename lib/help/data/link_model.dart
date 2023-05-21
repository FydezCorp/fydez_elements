
import 'help_factory_item_data.dart';

class LinkModel extends HelpFactoryItemData {
  final String type;
  final String style;
  final String content;
  final String href;

  LinkModel(this.type, this.style, this.content, this.href);

  

  factory LinkModel.fromMap(Map<String, dynamic> map) {
    return LinkModel(
      map['type'] ?? '',
      map['style'] ?? '',
      map['content'] ?? '',
      map['href'] ?? '',
    );
  }
}
