// ignore_for_file: camel_case_types

import 'package:angeldelivery/Conteroller1/account/verfiycode_signupcontroller.dart';
import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Functions/handleingDtatController.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleLogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleTwoLogin.dart';
import 'package:flutter/material.dart';

import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../Core1/Functions/handlingDataView.dart';

class verfiycode_signup extends StatelessWidget {
  const verfiycode_signup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(verifycode_signupcontrollerIm());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Appcolor.Wight,
          //  title: Text("التحقق من الحساب ",
          //   style: Theme.of(context)
          //       .textTheme
          //       .displayLarge!
          //       .copyWith(color: Appcolor.lightorang)),
        ),
        body: GetBuilder<verifycode_signupcontrollerIm>(
          builder: (controller) => HandlingDataRequest(
            statusRequest: controller.statusRequest,
            widget:Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                        opacity: 2.10,
                        image: AssetImage("images/lo1.PNG"),
                        fit: BoxFit.fill),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
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
                        //set to true to show as box or false to show as dash
                        showFieldAsBox: true,
                        //runs when a code is typed in
                        onCodeChanged: (String code) {
                          //handle validation or checks here
                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode) {
                          controller.gotosuesssignup(verificationCode);
                        }, // end onSubmit
                      ),
                      /*************************************************************** */

                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          //  reselt();
                        },
                        child: const Center(
                            child: Text(
                          "اعاده ارسال رمز التحقق",
                          style: TextStyle(
                              fontSize: 18, color: Appcolor.lightmoov3),
                        )),
                      )
                    ],
                  ),
                ), 
            
          )
              
        ));
  }
}
