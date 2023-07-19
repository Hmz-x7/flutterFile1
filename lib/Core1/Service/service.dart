import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Myservices extends GetxService {
//تقدر استخدم اكثر من باكيج
// الحاجات الي بحتاجه اول ماافتح التطبيق
  late PageController pageController;
  late SharedPreferences sharedPreferences;
  //عشان التخزين الموقت

  Future<Myservices> init() async {
   // await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialservices() async {
  await Get.putAsync(() => Myservices().init());
}
