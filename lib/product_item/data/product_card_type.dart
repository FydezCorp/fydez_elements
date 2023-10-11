import '../../const/logger.dart';

enum ProductCardType {
  A('a'),
  B('b');

  final String value;
  const ProductCardType(this.value);

  static ProductCardType fromString(String? value) {
    switch (value) {
      case 'A' || 'C' || 'D' || 'E':
        return ProductCardType.A;
      case 'B':
        return ProductCardType.B;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: ProductCardType,
        );
        return ProductCardType.A;
    }
  }
}
