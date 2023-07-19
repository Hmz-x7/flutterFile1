// ignore_for_file: camel_case_types

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Data1/DataSource/Static/static.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../Core1/Service/service.dart';

//abstract  يوضح الرسائل عشان افهم ايش في بالصفحه

abstract class onbordingcontreller extends GetxController {
  next(); //عشان انتقل لصفحه ثاني
  onpagechanged(int index); // index=0,1,..لما اسحب الصفحه
}

class onbordingcontrollerim extends onbordingcontreller {
  late PageController pageController;
  int currentpage = 0; //متغير
//===============================================================
  Myservices myServices = Get.find();
//===============================================================
  @override
  next() {
    /***************************************************** */
    currentpage++;
    if (currentpage > onbordinglist.length - 1) {
      Get.offAllNamed(AppRoute.login);

      //=====================عشان الصفحاتتظهر فقد عند تنزيل التطبيق================
      myServices.sharedPreferences.setString("step", "1");

      //==============================================================================
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }

    /************************************************************* */
  }
/*
  void onpagechanged(int index) {
    currentIndex.value = index;
  }*/

  @override
  onpagechanged(int index) {
    currentpage = index;
    update();
    //الان يرتبط ب dot
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
