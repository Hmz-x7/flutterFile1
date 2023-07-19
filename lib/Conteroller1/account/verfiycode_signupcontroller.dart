// ignore_for_file: unused_import, non_constant_identifier_names, camel_case_types, override_on_non_overriding_member, duplicate_ignore, avoid_print

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import '../../Core1/Class1/StatuesRequest.dart';
import '../../Core1/Functions/handleingDtatController.dart';
import '../../Data1/DataSource/remot/account/verifycode.dart';

abstract class verifycode_signupcontroller extends GetxController {
  checkcode(); //تنقلك للhome
  gotosuesssignup(String verfiyCodeSignUp);
}

class verifycode_signupcontrollerIm extends verifycode_signupcontroller {
  VerifycodesignupData verifycodesignupData = VerifycodesignupData(Get.find());

  StatusRequest statusRequest = StatusRequest.none ;
   late String email;


  
/*--------------------------------------------------------------------------------*/
  @override
gotosuesssignup(String verfiyCodeSignUp) async {
    statusRequest = StatusRequest.loading;
    update();
    var response =
        await verifycodesignupData.postdata(email, verfiyCodeSignUp);
    print("---------------------------Controller $response");
    statusRequest = handleingDtat(response);
    if (StatusRequest.success == statusRequest) {
       if (response['status'] == "success") {
       Get.offNamed(AppRoute.suesssignup);
       } 
       }
      else {
        print("==========******************==========");
        Get.defaultDialog(
            title: "Warning", middleText: "verify code Not Correct");
        statusRequest = StatusRequest.failure;
      }
    
    update();
  }

/*-------------------------------------------------------------------------------*/
  @override
  void onInit() {
    email = Get.arguments['email'];
    
    super.onInit();
  }

  @override
  checkcode() {
   
  }
}
