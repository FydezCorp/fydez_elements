import '../../const/logger.dart';

enum ProductBadgeLocation {
  topSharp('topSharp'),
  bottomSharp('bottomSharp'),
  topRound('topRound'),
  bottomRound('bottomRound');

  final String value;
  const ProductBadgeLocation(this.value);

  static ProductBadgeLocation fromString(String? value) {
    switch (value) {
      case 'sharp':
        return ProductBadgeLocation.topSharp;
      case 'bottom_sharp':
        return ProductBadgeLocation.bottomSharp;
      case 'round':
        return ProductBadgeLocation.topRound;
      case 'bottom_round':
        return ProductBadgeLocation.bottomRound;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: ProductBadgeLocation,
        );
        return ProductBadgeLocation.topSharp;
    }
  }
}
