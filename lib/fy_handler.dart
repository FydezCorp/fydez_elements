import 'enum/design_system.dart';

class FyHandler {
  static DesignSystem _designSystem = DesignSystem.material; // Default value

  static setDesignSystem(DesignSystem designSystem) {
    _designSystem = designSystem;
  }

  static DesignSystem get designSystem => _designSystem;
}
