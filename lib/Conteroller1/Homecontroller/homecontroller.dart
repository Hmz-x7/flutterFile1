// ignore_for_file: non_constant_identifier_names, avoid_print

import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Core1/Functions/handleingDtatController.dart';
import 'package:angeldelivery/Data1/DataSource/remot/homedata.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

abstract class Homecontroller extends GetxController {
  initialdata(); ///////////db
  gettoproudect(List categories, int selecedCat, String categoriesid);
  gotoAvailable_stores(List categories, int selecedCat);
  getdata();
}

class Homecontrollerim extends Homecontroller {
  TextEditingController? search;
  HomeData homeData = HomeData(Get.find());
  late StatusRequest statusRequest;
  List data = [];
  List serves = [];
  List categories = [];
  List proudect = [];
  bool issearch = false;
  // List Available_stores[];
  late int selecedCat =
      0; //***************************?????????????????????????????????????? */
  //  القسم الي تم اختياره
//-----search-----------------------------------------------------//
  checksearch(val) {
    if (val == "") {
      issearch = false;
    }
    update();
  }

  onssearchprou() {
    issearch = true;
    update();
  }

//----------------------------------------------------------------//
  @override
  initialdata() {}
  @override
  void onInit() {
    search = TextEditingController();
    //FirebaseMessaging.instance.subscribeToTopic("users");
    initialdata();
    //getdata();
    super.onInit();
  }

  @override
  gettoproudect(categories, selecedCat, categoriesid) {
    Get.toNamed(AppRoute.proudect, arguments: {
      "categories": categories,
      "selecedCat": selecedCat,
      "catid": categoriesid
    });
  }

  @override
  gotoAvailable_stores(categories, selecedCat) {
    Get.toNamed(AppRoute.proudect, arguments: {
      "categories": categories,
      "selecedCat": selecedCat,
    });
  }

/*--------------------------------------------------------*/
  @override
  getdata() async {
    statusRequest = StatusRequest.loading;
    var response = await homeData.getData(); //getData in data folder
    print("___________________controller $response");
    statusRequest = handleingDtat(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        serves.addAll(response['serves']);
        serves.addAll(response['categories']);
        serves.addAll(response['proudect']);
      } else {
        statusRequest = StatusRequest.failure;
      }
    }
    update();
  }
}
/*--------------------------------------------------------*/

@override
initialdata() {
  throw UnimplementedError();
}
