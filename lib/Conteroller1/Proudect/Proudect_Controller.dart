// ignore_for_file: avoid_print, must_call_super, slash_for_doc_comments

import 'package:angeldelivery/Conteroller1/cart_controller.dart';
import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Service/service.dart';
import 'package:angeldelivery/Data1/DataSource/remot/product.dart';
import 'package:get/get.dart';

import '../../Core1/Functions/handleingDtatController.dart';

abstract class Proudectcontroller extends GetxController {
  initialdata(); ///////////db
  changecat(int x);
  gotoproudctdeatiles(String categoryid);
}
/*********************************************************** */

class ProudectcontrollerIm extends Proudectcontroller {
  Cartcontroller cartcontroller = Get.put(Cartcontroller());
  List categories = [];
  String? catid;

  ProductData testData = ProductData(Get.find());
  List data = []; //to store the data its back from backend
  late StatusRequest statusRequest;
  Myservices myservices = Get.find();
  int? selecedCat = 0;

  //  القسم الي تم اختياره
  /*********************************************************** */

  @override
  void onInit() {
    initialdata();
  }
  /*********************************************************** */

  @override
  initialdata() {
    categories = Get.arguments['categories'];
    selecedCat = Get.arguments['selecedCat'];
    //catid = Get.arguments['catid'];

    // gotoproudctdeatiles(catid!);
  }
  /*********************************************************** */

  @override
  changecat(x) {
    // catval = catval;
    selecedCat = x;
    // gotoproudctdeatiles(catid!);
    update();
  }

  /*************************************************************** */
  @override
  gotoproudctdeatiles(categoryid) async {
    data.clear();
    statusRequest = StatusRequest.loading;
    try {
      var response = await testData.getData(
          categoryid,
          myservices.sharedPreferences
              .getString("id")!); //getData in data folder
      print("___________________controller $response");
      statusRequest = handleingDtat(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          data.addAll(response['data']);
          Get.toNamed("ProucetDeatiles");
        } else {
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } catch (e) {
      print('"the error is here ${e.toString()}"');
    }
    Get.toNamed("ProucetDeatiles");
  }
  /*================db===================================*/
}
