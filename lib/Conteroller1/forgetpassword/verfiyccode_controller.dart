// ignore_for_file: camel_case_types, avoid_renaming_method_parameters, avoid_print

import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Core1/Functions/handleingDtatController.dart';
import 'package:angeldelivery/Data1/DataSource/remot/forgetpassword/verifycodepass.dart';

import 'package:get/get.dart';

abstract class verfiycode_controller extends GetxController {
  checkcode(); //تنقلك للhome
  gotoresetpassword(String verifycode);
}

class verfiycode_controllerim extends verfiycode_controller {
  VerifyCodePasswordData verifyCodePassworddata =
      VerifyCodePasswordData(Get.find());
  StatusRequest? statusRequest;
  String? email;

//----------------------------------------------------------//
  @override
  gotoresetpassword(verfiyCode) async {
    statusRequest = StatusRequest.loading;
    update();
    var response = await verifyCodePassworddata.postdata(email!, verfiyCode);
    print("---------------------------Controller $response");
    statusRequest = handleingDtat(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
        Get.offNamed(AppRoute.resetpassword);
      } else {
        print("==========******************==========");
        Get.defaultDialog(
            title: "Warning", middleText: "verify code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    }
  }

//---------------------------------------------------------//
  @override
  void onInit() {
    email = Get.arguments['email'];

    super.onInit();
  }

  @override
  checkcode() {}
}
