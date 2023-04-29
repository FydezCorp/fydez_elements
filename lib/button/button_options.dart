import 'dart:ui';

class ButtonOptions {}

class FilledButtonOptions extends ButtonOptions {
  final Color backgroundColor;
  final String text;
  FilledButtonOptions({
    required this.backgroundColor,
    required this.text,
  });
}

class OutLinedButtonOptions extends ButtonOptions {
  final Color boarderColor;
  OutLinedButtonOptions({
    required this.boarderColor,
  });
}
