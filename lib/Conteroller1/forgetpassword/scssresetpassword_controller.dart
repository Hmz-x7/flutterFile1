// ignore_for_file: camel_case_types

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';

abstract class scssResetpassword_controller extends GetxController {
  gotoPagelogin();
}

class scssResetpassword_controllerim extends scssResetpassword_controller {
  late TextEditingController email;
  late TextEditingController phon;

  @override
  gotoPagelogin() {
    Get.offAllNamed(AppRoute.login);
  }
}
