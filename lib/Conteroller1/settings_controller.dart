// ignore_for_file: camel_case_types, unnecessary_brace_in_string_interps

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Core1/Service/service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:get/get.dart';

class Settings_Controller extends GetxController {
  Myservices myservices = Get.find();

  logout() {
    String userid = myservices.sharedPreferences.getString("id")!;
    FirebaseMessaging.instance.unsubscribeFromTopic("users");
    FirebaseMessaging.instance.unsubscribeFromTopic("users${userid}");
    myservices.sharedPreferences.clear();
    Get.offAllNamed(AppRoute.login);
  }
}
