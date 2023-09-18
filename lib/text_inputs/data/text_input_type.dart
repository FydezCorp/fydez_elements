import '../../const/logger.dart';

enum FyInputType {
  A,
  B,
  C,
  D,
  E;

  static FyInputType fromString(String? value) {
    switch (value) {
      case 'a':
        return FyInputType.A;
      case 'b':
        return FyInputType.B;
      case 'c':
        return FyInputType.C;
      case 'd':
        return FyInputType.D;
      case 'e':
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
