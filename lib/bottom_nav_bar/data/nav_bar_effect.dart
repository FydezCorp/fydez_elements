import '../../const/logger.dart';

enum NavBarEffect {
  none('none'),
  line('line'),
  shadow('shadow');

  const NavBarEffect(this.value);
  final String value;

  static NavBarEffect fromString(String? value) {
    switch (value) {
      case 'line':
        return NavBarEffect.line;
      case 'shadow':
        return NavBarEffect.shadow;
      case 'none':
        return NavBarEffect.none;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: NavBarEffect,
        );
        return NavBarEffect.none;
    }
  }
}
