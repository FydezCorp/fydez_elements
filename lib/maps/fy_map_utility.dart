// import 'dart:developer' as dev;
import 'dart:math';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'fy_marker_data.dart';

class FyMapUtility {
  /// Google Maps doesn't support getting bounds from a list of positions. So this
  /// functions does that for us.
  static LatLngBounds computeBounds(List<LatLng> list) {
    assert(list.isNotEmpty);
    var firstLatLng = list.first;
    var s = firstLatLng.latitude,
        n = firstLatLng.latitude,
        w = firstLatLng.longitude,
        e = firstLatLng.longitude;
    for (var i = 1; i < list.length; i++) {
      var latLng = list[i];
      s = min(s, latLng.latitude);
      n = max(n, latLng.latitude);
      w = min(w, latLng.longitude);
      e = max(e, latLng.longitude);
    }
    return LatLngBounds(southwest: LatLng(s, w), northeast: LatLng(n, e));
  }

  /// Animates camera to bound a list of markers (`FyMarkerData`).
  static Future<void> boundToMarkers({
    required GoogleMapController controller,
    required List<FyMarkerData> customMarkers,
  }) async {
    // dev.log('message');
    // ! For animating camera to bounds, we must add some manual lag.
    await Future.delayed(const Duration(seconds: 1));

    controller.animateCamera(CameraUpdate.newLatLngBounds(
      computeBounds(customMarkers.map((e) => e.position).toList()),
      75.0,
    ));
  }
}
