import '../../const/logger.dart';

enum RadioTileType {
  normal;

  static RadioTileType fromString(String? value) {
    switch (value) {
      case 'normal':
        return RadioTileType.normal;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: RadioTileType,
        );
        return RadioTileType.normal;
    }
  }
}
