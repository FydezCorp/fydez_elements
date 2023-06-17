enum CheckboxTileType {
  normal;

  static CheckboxTileType fromString(String? value) {
    switch (value) {
      case 'normal':
        return CheckboxTileType.normal;
      default:
        return CheckboxTileType.normal;
    }
  }
}
