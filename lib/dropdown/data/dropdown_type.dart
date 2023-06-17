enum DropdownType {
  connected('a'),
  disconnected('b'),
  modal('c'),
  material('d');

  const DropdownType(this.value);
  final String value;

  static DropdownType fromString(String? value) {
    switch (value) {
      case 'a':
        return DropdownType.connected;
      case 'b':
        return DropdownType.disconnected;
      case 'c':
        return DropdownType.modal;
      case 'd':
        return DropdownType.material;
      default:
        return DropdownType.modal;
    }
  }
}
