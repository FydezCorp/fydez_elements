import 'package:fydez_elements/fydez_elements.dart';

enum TextButtonType {
  material("material");

  final String value;
  const TextButtonType(this.value);

  static TextButtonType fromString(String? value) {
    switch (value) {
      case "material":
        return TextButtonType.material;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: TextButtonType,
        );
        return TextButtonType.material;
    }
  }
}
