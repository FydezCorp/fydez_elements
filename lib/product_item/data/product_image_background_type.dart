enum ProductImageBackgroundType {
  grey('grey'),
  white('white'),
  picture('picture'),
  shadow('shadow');

  final String value;
  const ProductImageBackgroundType(this.value);

  static ProductImageBackgroundType fromString(String? value) {
    switch (value) {
      case 'grey':
        return ProductImageBackgroundType.grey;
      case 'white':
        return ProductImageBackgroundType.white;
      case 'picture':
        return ProductImageBackgroundType.picture;
      case 'shadow':
        return ProductImageBackgroundType.shadow;
      default:
        return ProductImageBackgroundType.grey;
    }
  }
}
