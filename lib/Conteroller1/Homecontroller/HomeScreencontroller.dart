// ignore_for_file: prefer_const_constructors, avoid_renaming_method_parameters

import 'package:angeldelivery/View1/Screen/Home.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

// ignore: camel_case_types
abstract class homescreencontroller extends GetxController {
  changepage(int currentpage);
  gotosettings();
  gotofavorit();
  //التنقل بين الصفحات تقبل متغير  رقم الصفحه
}

// ignore: camel_case_types
class homescreencontrollerim extends homescreencontroller {
  int currentpage = 0;
  //قائمه الصفحات الي تحت
  List<Widget> listpage = [
    homepage(),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Center(child: Text("setting")),
    ]),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Center(child: Text("fafri")),
    ]),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Center(child: Text("koffm")),
    ]),
    Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
      Center(child: Text("senvktting")),
    ]),
  ];

  List titlebottombar = [
    {
      "title": "Home",
      "icon": Icons.home,
    }
  ];

  @override
  changepage(int i) {
    currentpage = i;
    //   Get.toNamed("setting");

    update();
  }

  @override
  gotosettings() {
    Get.toNamed("setting");
  }

  @override
  gotofavorit() {
    Get.toNamed("Favorite");
  }
}
