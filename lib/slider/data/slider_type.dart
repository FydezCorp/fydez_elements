import '../../const/logger.dart';

enum SliderType {
  simple,
  carousel,
  productDetail,
  ;

  static SliderType fromString(String? value) {
    switch (value) {
      case 'simple':
        return SliderType.simple;
      case 'carousel':
        return SliderType.carousel;
      case 'productDetail':
        return SliderType.productDetail;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: SliderType,
        );
        return SliderType.simple;
    }
  }
}
