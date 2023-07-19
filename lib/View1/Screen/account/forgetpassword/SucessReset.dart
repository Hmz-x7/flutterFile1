// ignore_for_file: camel_case_types

import 'package:angeldelivery/Conteroller1/forgetpassword/scssresetpassword_controller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomButtonAuth.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleLogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleTwoLogin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class sucessrestpasword extends StatelessWidget {
  const sucessrestpasword({super.key});
  @override
  Widget build(BuildContext context) {
    scssResetpassword_controllerim controller =
        Get.put(scssResetpassword_controllerim());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Appcolor.Wight,
        /*  title: Text("التحقق ",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Appcolor.lightorang)),*/
      ),
      body: Container(
        padding: const EdgeInsets.all(60),
        child: Column(
          children: [
            const Icon(
              Icons.check_circle_outline,
              size: 200,
            ),
            const cusrtomtitlelogin(text: "تم التحقق بنجاح"),
            const customtitletowlogin(
                text2: "................................ "),
            const Spacer(),
            custtombuttonauth(
              text: " الذهاب الى تسجيل الدخول",
              onPressed: () {
                controller.gotoPagelogin();
              },
            ),
          ],
        ),
      ),
    );
  }
}
