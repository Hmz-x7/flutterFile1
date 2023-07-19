// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_print, override_on_non_overriding_member, slash_for_doc_comments, annotate_overrides

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Data1/DataSource/remot/account/signup.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import '../../Core1/Class1/StatuesRequest.dart';
import '../../Core1/Functions/handleingDtatController.dart';

abstract class signup_controller extends GetxController {
  gotosigup();
  signup();
}

class signupcontrollerIm extends signup_controller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;
  bool isShowPassword = true;
   //StatusRequest? statusRequest;
  StatusRequest statusRequest=StatusRequest.none;

  SignupData signupdata = SignupData(Get.find());

  List data = [];

  ShowPassword_fun() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  /*--------------------------------------------------------------------------*/

  signup() async {
    ///////////////////////db///////////////////////////////////////////
   
    if (formstate.currentState!.validate()) {
      try {
        
    statusRequest = StatusRequest.loading;
    update();
        var response = await signupdata.postdata(
            username.text, password.text, email.text, phone.text);
        print(password.text);
        print(username.text);
        print(email.text);
        print(phone.text);

        print("---------------------------Controller $response");
        statusRequest = handleingDtat(response);
        if (statusRequest == StatusRequest.success) {
          print(StatusRequest.success.toString());
           if (response['status'] == "success") {
            print(StatusRequest.success.toString());
           //data.addAll(response['data']);
          
            Get.offNamed(
              AppRoute.verfiycode_signup,
              arguments: {"email": email.text},
            );
            
          } else {
            print("==========");
            Get.defaultDialog(
              title: "Warning",
              middleText: "Phone Number Or Email Already Exists",
              barrierDismissible: false,
              textConfirm: "OK",
              //confirmTextColor: appcolor.white,
              onConfirm: () => Get.back(),
            );
            statusRequest = StatusRequest.failure;
          }}
          
         else {}
          update();
       } catch (e) {
        print(e.toString());
      }
      
      } else {
        print('not valid');
    }
     update();
  }
  

  /******************************************************************************* */

/*-------------------------------------------------------------------------------*/
  @override
  gotosigup() {
    Get.offNamed(AppRoute.login);
  }

  @override
  void onInit() {
    //تعريف
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
    phone = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }
}
