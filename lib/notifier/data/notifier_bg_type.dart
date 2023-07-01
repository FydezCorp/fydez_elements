import '../../const/logger.dart';

enum NotifierBGType {
  normal('normal'),
  blur('blur');

  final String value;
  const NotifierBGType(this.value);

  static NotifierBGType fromString(String? value) {
    switch (value) {
      case 'normal':
        return NotifierBGType.normal;
      case 'blur':
        return NotifierBGType.blur;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: NotifierBGType,
        );
        return NotifierBGType.normal;
    }
  }
}
