import 'dart:async';

import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderDetilesController extends GetxController {
  Completer<GoogleMapController>? Completercontroller;
  CameraPosition? cameraPosition;

  double? lat;
  double? long;

  initData() {
    cameraPosition = const CameraPosition(
      target: LatLng(12.2222, 37.36),
      zoom: 14.4746,
    );

    // ignore: unused_element
    void onInit() {
      initData();
    }
  }
}
