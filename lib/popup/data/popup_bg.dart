enum PopupBG {
  normal,
  blur;

  static PopupBG fromString(String? value) {
    switch (value) {
      case 'normal':
        return PopupBG.normal;
      case 'blur':
        return PopupBG.blur;
      default:
        return PopupBG.normal;
    }
  }
}
