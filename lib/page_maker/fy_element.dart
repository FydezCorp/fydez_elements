import 'package:flutter/material.dart';
import 'package:fydez_elements/page_maker/fy_plugin.dart';

/// Building block of a page (`FyPage`) that can be rendered.
///
/// Different features could have multiple elements. Each element has its own
/// `name` and `render` alongside with `toJson` and `fromJson` methods.
abstract class FyElement {
  /// Name of the element. For debugging purposes only.
  String get name;

  /// The widget that will be shown for the element. Inside the implementation 
  /// of pages, you can use this widget to render the element.
  Widget get render;

  /// We need to convert the element to JSON to save it to a file or read it
  /// from backend.
  Map<String, dynamic> toJson();

  /// We need to convert the JSON to an element to render it.
  FyElement fromJson();

  /// Each element can change its behavior based on the plugins that we've added.
  List<FyPlugin> get supportedPlugins;

  @override
  String toString() {
    return '🔨 Element: $name';
  }

  /// Checks whether added plugins are supported by the element. This is a hook
  /// method so you can override it and change it.
  @protected
  bool checkPlugin(List<FyPlugin> plugins) {
    for (FyPlugin plugin in plugins) {
      if (!supportedPlugins.contains(plugin)) {
        return false;
      }
    }
    return true;
  }
}

class SampleElement extends FyElement {
  final List<FyPlugin>? plugins;

  SampleElement({
    this.plugins,
  });

  @override
  String name = 'SampleElement';

  @override
  Widget render = const Text('SampleElement');

  @override
  FyElement fromJson() {
    // TODO: implement fromJson
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson() {
    // TODO: implement toJson
    throw UnimplementedError();
  }

  @override
  List<FyPlugin> supportedPlugins = [
    SamplePlugin(),
  ];
}
