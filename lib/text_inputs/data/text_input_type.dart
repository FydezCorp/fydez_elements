import '../../const/logger.dart';

enum FyInputType {
  A,
  B;

  static FyInputType fromString(String? value) {
    switch (value) {
      case 'a':
        return FyInputType.A;
      case 'b':
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
