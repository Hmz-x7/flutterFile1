// ignore_for_file: prefer_const_constructors

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Core1/Localization/changelocal.dart';
import 'package:angeldelivery/View1/Widged1/Language/custombuttomlang.dart';
import 'package:flutter/material.dart';
// ignore: unused_import

import 'package:get/get.dart';

class Language extends GetView<localecontroller> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 200),
            Text(
              "1".tr, //عشان تكون دينمك تاخذ لغه الجهاز
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 20),
            custombuttonlang(
              textbutton: "2".tr,
              onPressed: () {
                controller.changelang("ar");
                Get.toNamed(AppRoute.OnBoarding);
              },
            ),
            const SizedBox(height: 10),
            custombuttonlang(
                textbutton: "3".tr,
                onPressed: () {
                  controller.changelang("en");
                  Get.toNamed(AppRoute.OnBoarding);
                }),
            SizedBox(height: 200),
            /* Positioned(
              //   top: -50,
              //  bottom: 0,
              //   left: 20,
              child: Container(
                height: 200,
                width: 330,
                decoration: BoxDecoration(
                    color: Appcolor.lightmoov2,
                    borderRadius: BorderRadius.circular(300)),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
