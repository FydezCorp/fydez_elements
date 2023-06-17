import '../../const/logger.dart';

enum CategoryItemType {
  normal;

  static CategoryItemType fromString(String? value) {
    switch (value) {
      case 'normal':
        return CategoryItemType.normal;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: CategoryItemType,
        );
        return CategoryItemType.normal;
    }
  }
}
