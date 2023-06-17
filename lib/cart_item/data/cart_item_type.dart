enum CartItemType {
  normal;

  static CartItemType fromString(String? value) {
    switch (value) {
      case 'normal':
        return CartItemType.normal;
      default:
        return CartItemType.normal;
    }
  }
}
