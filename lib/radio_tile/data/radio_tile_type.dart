enum RadioTileType {
  normal;

  static RadioTileType fromString(String? value) {
    switch (value) {
      case 'normal':
        return RadioTileType.normal;
      default:
        return RadioTileType.normal;
    }
  }
}
