import 'package:fydez_elements/fydez_elements.dart';

enum OutlinedButtonType {
  material("material");

  final String value;
  const OutlinedButtonType(this.value);

  static OutlinedButtonType fromString(String? value) {
    switch (value) {
      case "material":
        return OutlinedButtonType.material;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: OutlinedButtonType,
        );
        return OutlinedButtonType.material;
    }
  }
}
