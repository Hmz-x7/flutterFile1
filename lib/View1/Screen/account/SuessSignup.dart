// ignore_for_file: unused_local_variable

import 'package:angeldelivery/Conteroller1/account/scsssignup_controller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomButtonAuth.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleLogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleTwoLogin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class suesssignup extends StatelessWidget {
  const suesssignup({super.key});

  @override
  Widget build(BuildContext context) {
    scssSignup_controllerim controller = Get.put(scssSignup_controllerim());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Appcolor.Wight,
/*title: Text("الاشتراك ",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Appcolor.lightorang)),*/
      ),
      body: Container(
        margin: EdgeInsets.only(left: 60),
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            const Icon(
              Icons.check_circle_outline_outlined,
              color: Appcolor.lightmoovtomatch,
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
