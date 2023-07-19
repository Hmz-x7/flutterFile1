// ignore_for_file: camel_case_types, non_constant_identifier_names, override_on_non_overriding_member, avoid_print

import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Core1/Functions/handleingDtatController.dart';
import 'package:angeldelivery/Data1/DataSource/remot/forgetpassword/resetpassword.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

abstract class resetpassword_controller extends GetxController {
  resetpassword(); //تنقلك للhome
  gotosucessrestpasword();
}

class resetpassword_controllerim extends resetpassword_controller {
  String? email;
  late TextEditingController password;
  late TextEditingController repassword;
  StatusRequest? statusRequest;
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  RestetPasswordData restetPasswordata = RestetPasswordData(Get.find());

  @override
  Login() {}
/*-----------------------------------------------------------------*/
  @override
  gotosucessrestpasword() async {
    if (password.text != repassword.text) {
      return Get.defaultDialog(
          title: "warning", middleText: "Password Not Match");
    }

    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await restetPasswordata.postdata(email!, password.text);
      print("=============================== Controller $response ");
      statusRequest = handleingDtat(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.sucessrestpasword);
        } else {
          Get.defaultDialog(title: "ُWarning", middleText: "Try Again");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("Not Valid");
    }
  }

  /*--------------------------------------------------------*/
  @override
  resetpassword() {
    // TODO: implement resetpassword
    throw UnimplementedError();
  }

  @override
  void onInit() {
    email = Get.arguments['email'];
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
