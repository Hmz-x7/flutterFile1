// ignore_for_file: unused_import, non_constant_identifier_names

import 'dart:async';
import 'package:angeldelivery/Conteroller1/checkout_controller.dart';
import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:http_status_code/http_status_code.dart';

class AddAddressconController extends GetxController {
  Completer<GoogleMapController>? Completercontroller;
  Position? position;
  StatusRequest statusRequest = StatusRequest.loading;

  CameraPosition? kGooglePlex = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

/////////////////////////////////////////////////////////////////////////
  getCurrentLoction() async {
    position = await Geolocator.getCurrentPosition();
    kGooglePlex = CameraPosition(
      target: LatLng(position!.latitude, position!.longitude),
      zoom: 14.4746,
    );
    statusRequest = StatusRequest.none;

    update();
  }
  ///////////////////////////////////////////////////////////////////

  @override
  void onInit() {
    getCurrentLoction();
    Completercontroller = Completer<GoogleMapController>();
    super.onInit();
  }

/*
// ignore: unused_field
  Completer<GoogleMapController>? Completercontroller;
 

  //متغير ثابت من جوجل
  // ignore: unuse/d_field

  CameraPosition? kGooglePlex;

/*   ماعاد نستخدمه ياخذ وقت
// ignore: unused_field
static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);*/

//الموقع الحالي

  getCurrentLoction() async {
    position = await Geolocator.getCurrentPosition();
    kGooglePlex = CameraPosition(
      target: LatLng(position!.latitude, position!.longitude),
      zoom: 14.4746,
    );*/

  /*
    //
    update();*/
}
