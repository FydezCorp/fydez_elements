import 'package:fydez_elements/fydez_elements.dart';

enum FilledButtonType {
  material("material");

  final String value;
  const FilledButtonType(this.value);

  static FilledButtonType fromString(String? value) {
    switch (value) {
      case "material":
        return FilledButtonType.material;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: FilledButtonType,
        );
        return FilledButtonType.material;
    }
  }
}
