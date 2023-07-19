// ignore_for_file: unused_import, camel_case_types

import 'package:angeldelivery/Conteroller1/forgetpassword/resetpassword_controller.dart';
import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Functions/VaildInput.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomButtonAuth.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTextUsername.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleLogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleTwoLogin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class resetpassword extends StatelessWidget {
  const resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(resetpassword_controllerim());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Appcolor.Wight,
          /*  title: Text("استعاده كلمة المرور   ",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Appcolor.lightorang)),*/
        ),
        body: GetBuilder<resetpassword_controllerim>(
          builder: (controller) => controller.statusRequest ==
                  StatusRequest.loading
              ? const Center(child: Text("Loading..."))
              : Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  child: ListView(
                    children: [
                      const cusrtomtitlelogin(
                          text: "   كلمة المرور الجديده    "),
                      const customtitletowlogin(
                        text2: " ادخل كلمة المرور الجديده  ",
                      ),
                      const SizedBox(height: 15),
                      /******************************************************** */

                      /****************************************************** */
                      customtextusername(
                        hinttext: " ادخل كلمه المرور الجديده",
                        labeltext: "  ادخل كلمه المرور الجديده",
                        iconData: Icons.lock_outline,
                        mycontroller: controller.password,
                        valid: (val) {
                          return VaildInput(val!, 5, 30, "password");
                        },
                        isNumber: true,
                      ),
                      /*************************************************************** */
                      customtextusername(
                        hinttext: " تاكيد كلمه المرور الجديده",
                        labeltext: "  تاكيد كلمه المرور الجديده",
                        iconData: Icons.lock_outline,
                        mycontroller: controller.repassword,
                        valid: (val) {
                          return VaildInput(val!, 5, 30, "password");
                        },
                        isNumber: true,
                      ),
                      /**************************************************** */
                      custtombuttonauth(
                        text: "حفظ ",
                        onPressed: () {
                          controller.gotosucessrestpasword();
                        },
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
        ));
  }
}
