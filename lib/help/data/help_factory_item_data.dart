
import 'bullet_empty_model.dart';
import 'bullet_model.dart';
import 'column_model.dart';
import 'link_model.dart';
import 'rich_model.dart';
import 'table_model.dart';
import 'text_model.dart';

abstract class HelpFactoryItemData {
  static HelpFactoryItemData fromMap(Map<String, dynamic> json) {
    switch (json['type']) {
      case 'text':
        return TextModel.fromMap(json);
      case 'table': 
        return TableModel.fromMap(json);
      case 'column':
      return ColumnModel.fromMap(json); 
      case 'bullet':
      return BulletModel.fromMap(json); 
      case 'bullet-empty':
      return BulletEmptyModel.fromMap(json);
      case 'rich':
      return RichModel.fromMap(json);
      case 'link':
      return LinkModel.fromMap(json);
      default:
        return TextModel.fromMap(json);
    }
  }
}
