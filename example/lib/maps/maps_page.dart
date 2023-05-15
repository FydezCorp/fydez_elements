import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fydez_elements/fydez_elements.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MblMarkerData> customMarkers = [
      MblMarkerData(
        markerId: 'a',
        position: const LatLng(-33.94845924392454, 150.84666721522808),
        child: MblMarkerWidget.currentLocation(),
      ),
      MblMarkerData(
        markerId: 'b',
        position: const LatLng(-33.76324398166759, 150.88356133550406),
        child: MblMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
        onTap: () {
          // MblUtility.showGeneralSnackBar(
          //   context,
          //   type: SnackBarType.success,
          //   text: 'Element Tapped!',
          //   duration: const Duration(milliseconds: 100),
          // );
        },
      ),
      MblMarkerData(
        markerId: 'lmn',
        position: const LatLng(-33.797138786605885, 150.92115819454193),
        child: MblMarkerWidget.shop(),
        onTap: () {
          // MblUtility.showGeneralSnackBar(
          //   context,
          //   type: SnackBarType.success,
          //   text: 'Element Tapped!',
          //   duration: const Duration(milliseconds: 100),
          // );
        },
      ),
      MblMarkerData(
        markerId: 'c',
        position: const LatLng(-33.8958553958967, 151.02188888937235),
        child: MblMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
      ),
      MblMarkerData(
        markerId: 'd',
        position: const LatLng(-34.0041714113973, 150.82963652908802),
        child: MblMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
      ),
      MblMarkerData(
        markerId: 'e',
        position: const LatLng(-33.884127439470724, 150.85932154208422),
        child: MblMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
      ),
      MblMarkerData(
        markerId: 'f',
        position: const LatLng(-33.93145298001045, 150.79339418560266),
        child: MblMarkerWidget.store(
          name: 'Lion Food',
          imagePath:
              'https://shopassistdb.s3.ap-southeast-2.amazonaws.com/images/Pharmacy.png',
        ),
      ),
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('Maps!')),
      body: MblMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(-33.87869054679089, 151.0440744459629),
          zoom: 10,
        ),
        onMapCreated: (controller) async {
          await MblMapUtility.boundToMarkers(
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
