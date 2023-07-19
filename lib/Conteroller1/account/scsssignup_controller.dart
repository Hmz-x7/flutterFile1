// ignore_for_file: camel_case_types

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

abstract class scssSignup_controller extends GetxController {
  gotoPagelogin();
}

class scssSignup_controllerim extends scssSignup_controller {
  late TextEditingController email;
  late TextEditingController phon;

  @override
  gotoPagelogin() {
    Get.offAllNamed(AppRoute.homepage);
  }
}
