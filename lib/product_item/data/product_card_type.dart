import '../../const/logger.dart';

enum ProductCardType {
  A('A'),
  B('B');

  final String value;
  const ProductCardType(this.value);

  static ProductCardType fromString(String? value) {
    switch (value) {
      case 'A':
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
