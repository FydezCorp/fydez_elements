import '../../const/logger.dart';

enum PopupType {
  modal('a'),
  dialog('b');

  const PopupType(this.value);
  final String value;

  static PopupType fromString(String? value) {
    switch (value) {
      case 'a':
        return PopupType.modal;
      case 'b':
        return PopupType.dialog;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: PopupType,
        );
        return PopupType.modal;
    }
  }
}
