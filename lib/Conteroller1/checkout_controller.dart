// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';

enum StatuesRequest {
  loading,
  none,
}

class CheckoutController extends GetxController {
  //عشان اجلب العنواين من صفحه العنوان تلقائي
  //AddressData addressData = Get.put(AddressData(Get.find()));

  // MyServices myServices = Get.find();

//  StatusRequest statusRequest = StatusRequest.none;

  String? paymentMethod;

  String? addressid; //

  //List<AddressModel> dataaddress = [];
/////////////////////////////////////////////////////////////////////////////
  choosePaymentMethod(String val) {
    paymentMethod = val;
    update();
  }

  chooseCardChooesAdress(String val) {
    addressid = val;
    update();
  }
/////////////////////////////////////////////////////////////////////////////////
/*
  getShippingAddress() async {
    statusRequest = StatusRequest.loading;

    var response = await addressData
        .getData(myServices.sharedPreferences.getString("id")!);

    print("=============================== Controller $response ");

    statusRequest = handlingData(response);

    if (StatusRequest.success == statusRequest) {
      // Start backend
      if (response['status'] == "success") {
        List listdata = response['data'];
        dataaddress.addAll(listdata.map((e) => AddressModel.fromJson(e)));
      } else {
        statusRequest = StatusRequest.failure;
      }
      // End
    }
    update();
  }

  @override
  void onInit() {
    getShippingAddress();
    super.onInit();
  }*/
}
