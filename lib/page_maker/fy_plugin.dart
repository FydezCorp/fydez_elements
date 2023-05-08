class FyPlugin {
  String name;
  FyPlugin({
    required this.name,
  });
}

class SamplePlugin implements FyPlugin {
  @override
  String name = 'Sample Plugin';
}
