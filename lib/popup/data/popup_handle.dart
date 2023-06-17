import '../../const/logger.dart';

enum PopupHandle {
  inside,
  outside,
  close;

  static PopupHandle fromString(String? value) {
    switch (value) {
      case 'inside':
        return PopupHandle.inside;
      case 'outside':
        return PopupHandle.outside;
      case 'close':
        return PopupHandle.close;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: PopupHandle,
        );
        return PopupHandle.inside;
    }
  }
}
