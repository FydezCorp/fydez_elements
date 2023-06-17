enum SliderType {
  simple,
  carousel;

  static SliderType fromString(String? value) {
    switch (value) {
      case 'simple':
        return SliderType.simple;
      case 'carousel':
        return SliderType.carousel;
      default:
        return SliderType.simple;
    }
  }
}
