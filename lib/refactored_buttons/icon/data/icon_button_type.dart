import 'package:fydez_elements/fydez_elements.dart';

enum IconButtonType {
  material("material");

  final String value;
  const IconButtonType(this.value);

  static IconButtonType fromString(String? value) {
    switch (value) {
      case "material":
        return IconButtonType.material;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: IconButtonType,
        );
        return IconButtonType.material;
    }
  }
}
