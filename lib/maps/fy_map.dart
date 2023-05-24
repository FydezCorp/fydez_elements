import 'package:custom_map_markers/custom_map_markers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'constants/const_map_style.dart';
import 'fy_marker_data.dart';

class FyMap extends StatefulWidget {
  /// A function which returns controller of created map!
  final void Function(GoogleMapController)? onMapCreated;

  /// Returns [LatLng] of a tapped point on map.
  final void Function(LatLng)? onTap;

  /// An optional List of [FyMarkerData].To add your custom marker or use one
  ///  of proprietary markers (child parameter), use [FyMarkerWidget].
  final List<FyMarkerData>? customMarkers;

  /// REQUIRED initial position of camera.
  final CameraPosition initialCameraPosition;

  /// If `false`, user can't zoom and see the controllers of zooming. Defaults to
  /// `true`.
  final bool? zoomEnabled;

  /// If `false`, user can't move (pan) map. Defaults to `true`.
  final bool? panEnabled;

  /// If `false`, user can't rotate map. Defaults to `true`.
  final bool? rotatingEnabled;

  /// Map Creator!
  ///
  /// For adding markers, you should add a list of [FyMarkerData] which can
  /// take a widget as an input to show as marker (instead of images only)! To
  /// add your custom marker or use one of proprietary markers (child parameter)
  /// , use [FyMarkerWidget].
  const FyMap({
    Key? key,
    required this.initialCameraPosition,
    this.zoomEnabled,
    this.panEnabled,
    this.rotatingEnabled,
    this.onMapCreated,
    this.onTap,
    this.customMarkers,
  }) : super(key: key);

  @override
  State<FyMap> createState() => _FyMapState();
}

class _FyMapState extends State<FyMap> {
  late GoogleMapController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomGoogleMapMarkerBuilder(
        customMarkers: widget.customMarkers ?? <MarkerData>[],
        builder: (BuildContext context, Set<Marker>? markers) {
          return GoogleMap(
            initialCameraPosition: widget.initialCameraPosition,
            onTap: widget.onTap,
            mapType: MapType.normal,
            markers: markers ?? {},
            compassEnabled: true,
            // myLocationEnabled: true,
            zoomGesturesEnabled: widget.zoomEnabled ?? true,
            zoomControlsEnabled: widget.zoomEnabled ?? true,
            rotateGesturesEnabled: widget.rotatingEnabled ?? true,
            buildingsEnabled: false,
            scrollGesturesEnabled: widget.panEnabled ?? true,
            onMapCreated: (controller) {
              // Set controller inside map widget itself.
              setState(() {
                _controller = controller;
              });

              // Set style of map.
              _controller.setMapStyle(mapStyle);

              // Pass map controller to upper widget.
              widget.onMapCreated!(controller);
            },
            myLocationButtonEnabled: true,
            padding: const EdgeInsets.all(20.0),
          );
        });
  }
}
