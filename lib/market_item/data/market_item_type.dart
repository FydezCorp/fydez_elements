import '../../const/logger.dart';

enum MarketItemType {
  normal;

  static MarketItemType fromString(String? value) {
    switch (value) {
      case 'normal':
        return MarketItemType.normal;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: MarketItemType,
        );
        return MarketItemType.normal;
    }
  }
}
