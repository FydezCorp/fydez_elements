import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../../data/table_model.dart';
import '../help_factory_widget.dart';

class HelpTableWidget extends HelpFactoryWidget {
  const HelpTableWidget({super.key, required super.itemData});

  @override
  Widget build(BuildContext context) {
    final tableItem = itemData as TableModel;

    return Table(
      //if data is loaded then show table
      border: TableBorder.all(width: 1, color: context.fyColors.textTenColor),
      children: tableItem.rows.map((row) {
        //display data dynamically from name list List.
        return TableRow(
            //return table row in every loop
            children: row.items
                .map((e) => TableCell(
                    verticalAlignment: TableCellVerticalAlignment.top,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: HelpFactoryWidget.fromHelpItem(e),
                    )))
                .toList());
      }).toList(),
    );
  }
}
