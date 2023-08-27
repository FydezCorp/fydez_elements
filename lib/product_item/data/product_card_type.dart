import '../../const/logger.dart';

enum ProductCardType {
  A('a'),
  B('b');

  final String value;
  const ProductCardType(this.value);

  static ProductCardType fromString(String? value) {
    switch (value) {
      case 'a':
        return ProductCardType.A;
      case 'b':
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
