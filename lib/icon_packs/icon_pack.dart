enum IconPack {
  material,
  iconsax;

  static IconPack fromString(String? value) {
    switch (value) {
      case 'material':
        return IconPack.material;
      case 'iconsax':
        return IconPack.iconsax;
      default:
        return IconPack.material;
    }
  }
}
