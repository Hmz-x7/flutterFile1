// ignore_for_file: avoid_print

import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Data1/DataSource/remot/test_data.dart';
import 'package:get/get.dart';
import '../Core1/Functions/handleingDtatController.dart';

/*----------------------------------------------------------------------------------------------*/
class Testcontroller extends GetxController {
  TestData testData = TestData(Get.find());

  List data = []; //to store the data its back from backend
  late StatusRequest statusRequest;
  getData() async {
    statusRequest = StatusRequest.loading;
    try {
      var response = await testData.getData(); //getData in data folder
      print("___________________controller $response");
      statusRequest = handleingDtat(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          data.addAll(response['data']);
        } else {
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } catch (e) {
      print('"the error is here ${e.toString()}"');
    }
  }

/*---------------------------------------------------------------------------------------*/
  @override
  void onInit() {
    //checkInternet();
    getData();
    super.onInit();
  }
}
