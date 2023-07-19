import 'package:angeldelivery/Conteroller1/forgetpassword/verfiyccode_controller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleLogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleTwoLogin.dart';
import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class verfiycode extends StatelessWidget {
  const verfiycode({super.key});

  @override
  Widget build(BuildContext context) {
    verfiycode_controllerim controller = Get.put(verfiycode_controllerim());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Appcolor.Wight,
        /* title: Text("التحقق من الحساب ",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Appcolor.lightorang)),*/
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: const DecorationImage(
              opacity: 2.10,
              image: AssetImage("images/lo1.PNG"),
              fit: BoxFit.fill),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
        child: ListView(
          children: [
            const cusrtomtitlelogin(text: "   التحقق من الحساب  "),
            const customtitletowlogin(
              text2: " يرجى ادخال رمز التحقق",
            ),
            const SizedBox(height: 15),
            /******************************************************** */

            /****************************************************** */
            OtpTextField(
              borderRadius: BorderRadius.circular(20),
              fieldWidth: 50.0,
              numberOfFields: 5,
              borderColor: Color.fromARGB(255, 70, 218, 25),
              showFieldAsBox: true,
              onCodeChanged: (String code) {},
              onSubmit: (String verificationCode) {
                controller.gotoresetpassword(verificationCode);
              }, // end onSubmit
            ),
            /*************************************************************** */

            const SizedBox(height: 15),
            const Center(
                child: Text(
              "اعاده ارسال رمز التحقق",
              style: TextStyle(fontSize: 18, color: Appcolor.lightmoov3),
            )),
          ],
        ),
      ),
    );
  }
}
