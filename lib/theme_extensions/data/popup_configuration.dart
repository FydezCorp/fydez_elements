import 'package:fydez_elements/fydez_elements.dart';

class PopupConfiguration {
  final PopupType type;
  final PopupHandle handle;
  final PopupBG background;
  final double cornerRadius;

  PopupConfiguration({
    required this.type,
    required this.handle,
    required this.background,
    required this.cornerRadius,
  });
}
