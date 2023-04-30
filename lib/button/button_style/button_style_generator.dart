import '../fy_button_factory.dart';

class ButtonStyleGenerator {
  final FyButtonFactory filled;
  final FyButtonFactory outlined;
  final FyButtonFactory icon;
  final FyButtonFactory text;
  ButtonStyleGenerator({
    required this.filled,
    required this.outlined,
    required this.icon,
    required this.text,
  });
  Map<String, FyButtonFactory> generateStyle() {
    return {'filled': filled, 'outlined': outlined, 'icon': icon, 'text': text};
  }
}
