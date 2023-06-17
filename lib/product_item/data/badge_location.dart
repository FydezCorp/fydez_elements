enum ProductBadgeLocation {
  topSharp('topSharp'),
  bottomSharp('bottomSharp'),
  topRound('topRound'),
  bottomRound('bottomRound');

  final String value;
  const ProductBadgeLocation(this.value);

  static ProductBadgeLocation fromString(String? value) {
    switch (value) {
      case 'top-sharp':
        return ProductBadgeLocation.topSharp;
      case 'bottom-sharp':
        return ProductBadgeLocation.bottomSharp;
      case 'top-round':
        return ProductBadgeLocation.topRound;
      case 'bottom-round':
        return ProductBadgeLocation.bottomRound;
      default:
        return ProductBadgeLocation.topSharp;
    }
  }
}
