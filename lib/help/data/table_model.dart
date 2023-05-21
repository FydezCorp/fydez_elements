
import 'help_factory_item_data.dart';

class TableModel extends HelpFactoryItemData {
  final String type;
  final int columnCount;
  final List<TableRowModel> rows;

  TableModel(this.type, this.columnCount, this.rows);

 


  factory TableModel.fromMap(Map<String, dynamic> map) {
    return TableModel(
      map['type'] ?? '',
      map['columnCount']?.toInt() ?? 0,
      List<TableRowModel>.from(map['rows']?.map((x) => TableRowModel.fromMap(x))),
    );
  }
}

class TableRowModel{
  final List<HelpFactoryItemData> items;
  TableRowModel({
    required this.items,
  });


  factory TableRowModel.fromMap(List<dynamic> map) {
    return TableRowModel(
      items: List<HelpFactoryItemData>.from(map.map((x) => HelpFactoryItemData.fromMap(x))),
    );
  }
}
