import 'package:fydez_elements/fydez_elements.dart';

import '../page_maker/login/login_element.dart';

class ElementSerializer {
  static FyElement getElementFromMap(Map<String, dynamic> map) {
    switch (map['element_type']) {
      case 'LoginElement 001':
        return LoginElement(
          loginPageButtonText: map['loginPageButtonText'],
          loginPageDescription: map['loginPageDescription'],
          loginPageTitle: map['loginPageTitle'],
        );
      default:
        throw Exception('Element not found, or the format isn\'t correct.');
    }
  }
}
