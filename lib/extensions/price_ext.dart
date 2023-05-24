import 'package:intl/intl.dart';

extension PriceExt on double {
  String toPrice() {
    final formatter = NumberFormat("#,##0.00", "en_US");
    String price = formatter.format(this);
    return '\$$price';
  }

  String toPercent() {
    final discount = toStringAsFixed(1);
    return '% $discount';
  }
}
