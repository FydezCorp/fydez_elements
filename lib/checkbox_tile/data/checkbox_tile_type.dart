import '../../const/logger.dart';

enum CheckboxTileType {
  normal;

  static CheckboxTileType fromString(String? value) {
    switch (value) {
      case 'normal':
        return CheckboxTileType.normal;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: CheckboxTileType,
        );
        return CheckboxTileType.normal;
    }
  }
}
