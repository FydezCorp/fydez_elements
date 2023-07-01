import '../../fydez_elements.dart';

class ButtonConfiguration {
  final double filledCornerRadius;
  final FilledButtonType filledType;
  final double outlinedCornerRadius;
  final OutlinedButtonType outlinedType;
  final double textCornerRadius;
  final TextButtonType textType;
  final IconButtonType iconType;

  ButtonConfiguration({
    required this.filledCornerRadius,
    required this.filledType,
    required this.outlinedCornerRadius,
    required this.outlinedType,
    required this.textCornerRadius,
    required this.textType,
    required this.iconType,
  });
}
