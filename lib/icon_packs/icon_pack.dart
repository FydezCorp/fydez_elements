import '../const/logger.dart';

enum IconPack {
  material,
  iconsax,
  feather;

  static IconPack fromString(String? value) {
    switch (value) {
      case 'material':
        return IconPack.material;
      case 'iconsax':
        return IconPack.iconsax;
      case 'feather':
        return IconPack.feather;
      default:
        SerializationErrorLogger.showConfigError(
          value: value,
          object: IconPack,
        );
        return IconPack.material;
    }
  }
}
