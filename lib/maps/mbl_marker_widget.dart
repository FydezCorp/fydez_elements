import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fydez_elements/extensions/theme_extension.dart';

import '../const/package_name.dart';

part 'widgets/current_location_marker.dart';
part 'widgets/shop_marker.dart';
part 'widgets/store_marker.dart';

class MblMarkerWidget extends StatelessWidget {
  final Widget child;
  const MblMarkerWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: child);
  }

  /// Green Indicator of Current Location.
  factory MblMarkerWidget.currentLocation() {
    return const MblMarkerWidget(
      child: _CurrentLocationMarker(),
    );
  }

  /// Store Indicator (the one with name and image).
  factory MblMarkerWidget.store({
    required String name,
    required String imagePath,
  }) {
    return MblMarkerWidget(
      child: _StoreMarker(name: name, imagePath: imagePath),
    );
  }
  factory MblMarkerWidget.shop() {
    return const MblMarkerWidget(
      child: _ShopMarker(),
    );
  }
}
