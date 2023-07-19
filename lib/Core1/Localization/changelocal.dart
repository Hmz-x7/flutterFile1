// ignore_for_file: unused_local_variable, unused_element

import 'package:angeldelivery/Core1/Constant/ThemData.dart';
import 'package:angeldelivery/Core1/Service/service.dart';
import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

//عند الضغط تتحول اللغه
// ignore: camel_case_types
class localecontroller extends GetxController {
  Locale? langugage;
  Myservices myservices = Get.find();
  ThemeData apptheme = themeEnglish;
  //fun
  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myservices.sharedPreferences.setString("lang", langcode);
    apptheme = langcode == "ar" ? themeArabic : themeEnglish;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  }

  ////////خاصه بالموقع///////////////////////////////////
  //_________________1____________________________________________//
  requestPerLoction() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //____________2__اذا مش مفعل loc يفعله ___________________________//

    if (!serviceEnabled) {
      return Get.snackbar("تنبيه", "الرجاء تفعيل خدمة الموقع");
    }
    //________________3__نتاكد من per___________________________________________________//

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Get.snackbar("تنبيه", "الرجاء السماح بالوصول الي الموقع");
      }
    }
    //______________________لا يستطيع الوصول___________________________________________//
    if (permission == LocationPermission.deniedForever) {
      return Get.snackbar(
          "تنبيه", "لايمكن استخدام التطبيق من دون تفعيل الموقع");
    }
//____________________________________________________________________________________________________//
  }
  ///////////////////////////////////////////////////////////////////////////////////////////////////////

  void oninit() {
    requestPerLoction(); //////////////////////////////////تشغيله بدايه التطبيق
    String? sharedPreflang = myservices.sharedPreferences.getString("lang");
    //  key=1;
    if (sharedPreflang == "ar") {
      langugage = const Locale("ar");
      //عشان يخزن اللغه المختاره من قبل المستخدم
      apptheme = themeArabic;
    } else if (sharedPreflang == "en") {
      langugage = const Locale("en");
      //عشان يخزن اللغه المختاره من قبل المستخدم

      apptheme = themeEnglish;
    } else {
      /////////////////////تلقائي حسب الجهاز
      langugage = Locale(Get.deviceLocale!.languageCode);
         apptheme = themeEnglish;
    }
     super.onInit();
    //اول مره يفتح التطبيق
  }
}
