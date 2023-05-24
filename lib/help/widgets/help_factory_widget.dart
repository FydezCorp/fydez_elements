import 'package:flutter/material.dart';
import '../data/bullet_empty_model.dart';
import '../data/bullet_model.dart';
import '../data/column_model.dart';
import '../data/help_factory_item_data.dart';
import '../data/link_model.dart';
import '../data/rich_model.dart';
import '../data/table_model.dart';
import '../data/text_model.dart';
import 'help_widgets/help_bullet_widget.dart';
import 'help_widgets/help_column_widget.dart';
import 'help_widgets/help_empty_widget.dart';
import 'help_widgets/help_link_widget.dart';
import 'help_widgets/help_rich_widget.dart';
import 'help_widgets/help_table_widget.dart';
import 'help_widgets/help_text_widget.dart';

abstract class HelpFactoryWidget extends StatelessWidget {
  final HelpFactoryItemData itemData;
  const HelpFactoryWidget({
    Key? key,
    required this.itemData,
  }) : super(key: key);

  static HelpFactoryWidget fromHelpItem(HelpFactoryItemData itemData) {
    switch (itemData.runtimeType) {
      case TextModel:
        return HelpTextWidget(itemData: itemData);
      case TableModel:
        return HelpTableWidget(itemData: itemData);
      case ColumnModel:
        return HelpColumnWidget(itemData: itemData);
      case BulletModel:
        return HelpBulletWidget(itemData: itemData);
      case BulletEmptyModel:
        return HelpBulletWidget(itemData: itemData);
      case LinkModel:
        return HelpLinkWidget(itemData: itemData);
      case RichModel:
        return HelpRichWidget(itemData: itemData);
      default:
        return HelpEmptyWidget(
          itemData: itemData,
        );
    }
  }
}
