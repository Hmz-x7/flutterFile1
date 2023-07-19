import 'dart:io';

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
    title: "21".tr,
    middleText: "22".tr,
    actions: [
      CupertinoDialogAction(
        child: Text("23".tr),
        onPressed: () {
          exit(0);
        },
      ),
      CupertinoDialogAction(
        child: Text("24".tr),
        onPressed: () {
          Get.back();
        },
      ),
    ],
    backgroundColor: Appcolor.lightorang,
  );
  return Future.value(true);
}
