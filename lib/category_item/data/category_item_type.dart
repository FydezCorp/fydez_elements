enum CategoryItemType {
  normal;

  static CategoryItemType fromString(String? value) {
    switch (value) {
      case 'normal':
        return CategoryItemType.normal;
      default:
        return CategoryItemType.normal;
    }
  }
}
