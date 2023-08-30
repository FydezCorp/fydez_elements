import '../../const/logger.dart';

enum DropdownType {
  connected('a'),
  disconnected('b'),
  modal('c'),
  material('d');

  const DropdownType(this.value);
  final String value;

  static DropdownType fromString(String? value) {
    switch (value) {
      case 'A':
        return DropdownType.connected;
      case 'B':
        return DropdownType.disconnected;
      case 'C':
        return DropdownType.modal;
      case 'D':
        return DropdownType.material;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: DropdownType,
        );
        return DropdownType.modal;
    }
  }
}
