import '../../const/logger.dart';

enum TabbarType {
  underlined,
  lightBackground;

  static TabbarType fromString(String? value) {
    switch (value) {
      case 'underlined':
        return TabbarType.underlined;
      case 'lightBackground':
        return TabbarType.lightBackground;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: TabbarType,
        );
        return TabbarType.underlined;
    }
  }
}
