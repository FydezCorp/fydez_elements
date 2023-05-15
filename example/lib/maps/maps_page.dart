import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FyMarkerData> customMarkers = [
      FyMarkerData(
        markerId: 'a',
        position: const LatLng(-33.94845924392454, 150.84666721522808),
        child: FyMarkerWidget.currentLocation(),
      ),
      FyMarkerData(
        markerId: 'b',
        position: const LatLng(-33.76324398166759, 150.88356133550406),
        child: FyMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
        onTap: () {
          // FyUtility.showGeneralSnackBar(
          //   context,
          //   type: SnackBarType.success,
          //   text: 'Element Tapped!',
          //   duration: const Duration(milliseconds: 100),
          // );
        },
      ),
      FyMarkerData(
        markerId: 'lmn',
        position: const LatLng(-33.797138786605885, 150.92115819454193),
        child: FyMarkerWidget.shop(),
        onTap: () {
          // FyUtility.showGeneralSnackBar(
          //   context,
          //   type: SnackBarType.success,
          //   text: 'Element Tapped!',
          //   duration: const Duration(milliseconds: 100),
          // );
        },
      ),
      FyMarkerData(
        markerId: 'c',
        position: const LatLng(-33.8958553958967, 151.02188888937235),
        child: FyMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
      ),
      FyMarkerData(
        markerId: 'd',
        position: const LatLng(-34.0041714113973, 150.82963652908802),
        child: FyMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
      ),
      FyMarkerData(
        markerId: 'e',
        position: const LatLng(-33.884127439470724, 150.85932154208422),
        child: FyMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
      ),
      FyMarkerData(
        markerId: 'f',
        position: const LatLng(-33.93145298001045, 150.79339418560266),
        child: FyMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Maps!')),
      body: FyMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(-33.87869054679089, 151.0440744459629),
          zoom: 10,
        ),
        onMapCreated: (controller) async {
          await FyMapUtility.boundToMarkers(
            controller: controller,
            customMarkers: customMarkers,
          );
        },
        onTap: (p0) {
          log(p0.toString());
        },
        // zoomEnabled: false,
        customMarkers: customMarkers,
      ),
    );
  }
}
