import '../../const/logger.dart';

enum NavBarStyle {
  bold('bold'),
  transparent('transparent'),
  mainTitle('main_title');

  const NavBarStyle(this.value);
  final String value;

  static NavBarStyle fromString(String? value) {
    switch (value) {
      case 'bold':
        return NavBarStyle.bold;
      case 'transparent':
        return NavBarStyle.transparent;
      case 'main_title':
        return NavBarStyle.mainTitle;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: NavBarStyle,
        );
        return NavBarStyle.bold;
    }
  }
}
