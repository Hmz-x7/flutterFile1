// ignore_for_file: unused_import, avoid_print, prefer_const_constructors

import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Functions/handleingDtatController.dart';
import 'package:angeldelivery/Core1/Service/service.dart';
import 'package:angeldelivery/Data1/DataSource/remot/favoritedata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritController extends GetxController {
  FavoritData favoritData = FavoritData(Get.find());

  List data = []; //to store the data its back from backend
  late StatusRequest statusRequest;
  Myservices myservices = Get.find();

  //-----------------------------------------------//
  Map isfavorit = {};

  setfavorite(id, val) {
    isfavorit[id] = val;
    update();
  }

  //-----------------------------------------------------//
  addfavroite(String productid) async {
    data.clear();
    statusRequest = StatusRequest.loading;

    var response = await favoritData.addfavorit(
        myservices.sharedPreferences.getString("id")!,
        productid); //getData in data folder
    print("___________________controller $response");
    statusRequest = handleingDtat(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار", messageText: Text("تم الاضافه الي المفضله"));
        // data.addAll(response['data']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }

//-----------------------------------------------------------//
  removefavroite(String productid) async {
    data.clear();
    statusRequest = StatusRequest.loading;

    var response = await favoritData.removefavorit(productid,
        myservices.sharedPreferences.getString("id")!); //getData in data folder
    print("___________________controller $response");
    statusRequest = handleingDtat(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.rawSnackbar(
            title: "اشعار", messageText: Text("   تم الحذف من المفضله"));

        // data.addAll(response['data']);
        // Get.toNamed("ProucetDeatiles");
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
  }
//-----------------------------------------------------------//
}
