import 'package:fydez_elements/fydez_elements.dart';

class PageSerializer {
  static FyPage getPageFromMap(Map<String, dynamic> map) {
    switch (map['page_type']) {
      case 'SingleElementFyPage':
        return SingleElementFyPage(
          element: ElementSerializer.getElementFromMap(map),
        );
      default:
        throw Exception('Page not found, or the format isn\'t correct.');
    }
  }
}