// ignore_for_file: camel_case_types, avoid_print

import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Core1/Functions/handleingDtatController.dart';
import 'package:angeldelivery/Data1/DataSource/remot/forgetpassword/checkemail.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

abstract class forgerpassword_controller extends GetxController {
  checkemail();
}

class forgerpassword_controllerim extends forgerpassword_controller {
  CheckEmailData checkemaildata = CheckEmailData(Get.find());
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  StatusRequest? statusRequest;
  late TextEditingController email;
/*--------------------------------------------------------------------*/
  @override
  checkemail() async {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await checkemaildata.postdata(email.text);
      print("=============================== Controller $response ");
      statusRequest = handleingDtat(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.offNamed(AppRoute.verfiycode, arguments: {"email": email.text});
        } else {
          Get.defaultDialog(title: "ُWarning", middleText: "Email Not Found");
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    }
  }

/*--------------------------------------------------------------------*/

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
