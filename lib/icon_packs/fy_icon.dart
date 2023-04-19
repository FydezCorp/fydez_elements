import 'package:flutter/widgets.dart';

abstract class FyIcon {
  /// The build context used to access the fyParameters object.
  static FyIcon of(BuildContext context) {
    return Localizations.of<FyIcon>(context, FyIcon) as FyIcon;
  }

  IconData get home;
  IconData get login;
  IconData get logout;
  IconData get eye;
  IconData get user;
  IconData get heart;
  IconData get store;
  IconData get arrowDown;
  IconData get arrowUp;
}
