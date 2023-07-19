// ignore_for_file: unused_import

import 'package:angeldelivery/Binding.dart';
import 'package:angeldelivery/Core1/Localization/changelocal.dart';
import 'package:angeldelivery/Core1/Localization/translation.dart';
import 'package:angeldelivery/Core1/Service/service.dart';
import 'package:angeldelivery/TestView.dart';
import 'package:angeldelivery/View1/Screen/HomeScreen.dart';
import 'package:angeldelivery/View1/Screen/Language.dart';
import 'package:angeldelivery/View1/Screen/account/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialservices();
  //debugPrint("start the app");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    localecontroller controller = Get.put(localecontroller());
    return GetMaterialApp(
      ///************************************************************* */
      translations: mytranslation(),
      // /*********************lo2********************************* */
      locale: controller.langugage, //................2
      ///********************************************* */
      theme: controller.apptheme,
      /****************************************** */
      initialBinding: initalBinding(),
      /************************************************** */
      debugShowCheckedModeBanner: false,
      getPages: routes,
      // ignore: prefer_const_constructors
      // home: Login(),
    );
  }
}
