enum PopupType {
  modal('A'),
  dialog('B');

  const PopupType(this.value);
  final String value;

  static PopupType fromString(String? value) {
    switch (value) {
      case 'A':
        return PopupType.modal;
      case 'B':
        return PopupType.dialog;
      default:
        return PopupType.modal;
    }
  }
}
