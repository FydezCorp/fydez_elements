import '../../const/logger.dart';

enum CartItemType {
  normal;

  static CartItemType fromString(String? value) {
    switch (value) {
      case 'normal':
        return CartItemType.normal;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: CartItemType,
        );
        return CartItemType.normal;
    }
  }
}
