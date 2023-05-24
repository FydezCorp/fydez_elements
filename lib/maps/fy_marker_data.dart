import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FyMarkerData extends StatelessWidget implements MarkerData {
  /// A string that should be unique for each marker.
  final String markerId;

  /// Coordinates of marker's location.
  final LatLng position;

  /// Does it need explanation?
  final void Function()? onTap;

  /// Widget that is being shown.
  @override
  final Widget child;

  /// A widget containing data of marker on [FyMap] widget.
  const FyMarkerData({
    Key? key,
    required this.markerId,
    required this.position,
    required this.child,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }

  @override
  Marker get marker => Marker(
        markerId: MarkerId(markerId),
        position: position,
        onTap: onTap,
        consumeTapEvents: true,
      );
}
