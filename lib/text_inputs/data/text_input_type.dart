import '../../const/logger.dart';

enum FyInputType {
  A,
  B,
  C,
  D,
  E;

  static FyInputType fromString(String? value) {
    switch (value) {
      case 'A':
        return FyInputType.A;
      case 'B':
        return FyInputType.B;
      case 'C':
        return FyInputType.C;
      case 'D':
        return FyInputType.D;
      case 'E':
        return FyInputType.E;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: FyInputType,
        );
        return FyInputType.A;
    }
  }
}
