// ignore_for_file: non_constant_identifier_names, camel_case_types, avoid_print, unused_local_variable, unnecessary_brace_in_string_interps

import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Core1/Functions/handleingDtatController.dart';
import 'package:angeldelivery/Core1/Service/service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

import '../../Data1/DataSource/remot/account/login.dart';

abstract class login_controller extends GetxController {
  Login(); //تنقلك للhome
  gotosigup();
  gotoforgetpassword();
}

class logincontrollerIm extends login_controller {

  Logindata logindata = Logindata(Get.find()); //******************* */
  List data = [];
  final GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  bool isShowPassword = true;
  Myservices myservices = Get.find();
  StatusRequest statusRequest = StatusRequest.none; //*************** */
  ShowPassword_fun() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

/*---------------------------------------------------------------------------------------*/
  @override
  Login() async {
    //var formdata = formstate.currentState;
    if (formstate.currentState!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await logindata.postdata(email.text, password.text);
      print(password.text);
      print(email.text);
      print("---------------------------Controller $response");

      statusRequest = handleingDtat(response);
      if (StatusRequest.success == statusRequest) {
        if (response['status'] == "success") {
          // myservices.sharedPreferences
          //     .setString("id", response['data']['user_id']);
          // String userid = myservices.sharedPreferences.getString("id")!;
          // myservices.sharedPreferences
          //     .setString("username", response['data']['user_name']);
          // myservices.sharedPreferences
          //     .setString("email", response['data']['user_email']);
          // myservices.sharedPreferences
          //     .setString("phone", response['data']['user_phone']);
          myservices.sharedPreferences.setString("step", "2");

          // FirebaseMessaging.instance.subscribeToTopic("users");
          // FirebaseMessaging.instance.subscribeToTopic("users${userid}");

          // data.addAll(response['data']);
          Get.offNamed(AppRoute.IndexHome);
        } else {
          print("_________");
          Get.defaultDialog(
            title: "Warning",
            middleText: "Phone Number Or Email Already Exists",
            barrierDismissible: false,
            textConfirm: "OK",
            confirmTextColor: Appcolor.grywhit,
            onConfirm: () => Get.back(),
          );
          statusRequest = StatusRequest.failure;
        }
      } else {}
    }
    update();
  }

//======================================================================================================================//
  @override
  gotosigup() {
    Get.toNamed(AppRoute.signup);
  }

  @override
  void onInit() {
    // FirebaseMessaging.instance.getToken().then((value) {
    //   print(value);
    //   String? token = value;
    // });
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  gotoforgetpassword() {
    Get.toNamed(AppRoute.forgetpassword);
  }
}
