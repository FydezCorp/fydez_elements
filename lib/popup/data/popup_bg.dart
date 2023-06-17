import '../../const/logger.dart';

enum PopupBG {
  normal,
  blur;

  static PopupBG fromString(String? value) {
    switch (value) {
      case 'normal':
        return PopupBG.normal;
      case 'blur':
        return PopupBG.blur;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: PopupBG,
        );
        return PopupBG.normal;
    }
  }
}
