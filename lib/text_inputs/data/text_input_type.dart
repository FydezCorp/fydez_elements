import '../../const/logger.dart';

enum FyInputType {
  A,
  B;

  static FyInputType fromString(String? value) {
    switch (value) {
      case 'A':
        return FyInputType.A;
      case 'B':
        return FyInputType.B;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: FyInputType,
        );
        return FyInputType.A;
    }
  }
}
