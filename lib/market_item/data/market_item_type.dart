enum MarketItemType {
  normal;

  static MarketItemType fromString(String? value) {
    switch (value) {
      case 'normal':
        return MarketItemType.normal;
      default:
        return MarketItemType.normal;
    }
  }
}
