import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../const/package_name.dart';

part 'widgets/current_location_marker.dart';
part 'widgets/shop_marker.dart';
part 'widgets/store_marker.dart';

class FyMarkerWidget extends StatelessWidget {
  final Widget child;
  const FyMarkerWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: child);
  }

  /// Green Indicator of Current Location.
  factory FyMarkerWidget.currentLocation() {
    return const FyMarkerWidget(
      child: _CurrentLocationMarker(),
    );
  }

  /// Store Indicator (the one with name and image).
  factory FyMarkerWidget.store({
    required String name,
    required String imagePath,
  }) {
    return FyMarkerWidget(
      child: _StoreMarker(name: name, imagePath: imagePath),
    );
  }
  factory FyMarkerWidget.shop() {
    return const FyMarkerWidget(
      child: _ShopMarker(),
    );
  }
}
