import '../../const/logger.dart';

enum SliderType {
  simple,
  carousel;

  static SliderType fromString(String? value) {
    switch (value) {
      case 'simple':
        return SliderType.simple;
      case 'carousel':
        return SliderType.carousel;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: SliderType,
        );
        return SliderType.simple;
    }
  }
}
