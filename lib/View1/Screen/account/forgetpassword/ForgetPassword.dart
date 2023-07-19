// ignore_for_file: file_names, camel_case_types

import 'package:angeldelivery/Conteroller1/forgetpassword/forgerpasswor_controllert.dart';
import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Functions/VaildInput.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomButtonAuth.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTextUsername.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleLogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleTwoLogin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class forgetpassword extends StatelessWidget {
  const forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(forgerpassword_controllerim());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Appcolor.Wight,
        /*   title: Text("نسيت كلمة المرور ",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: Appcolor.lightorang)),*/
      ),
      body: GetBuilder<forgerpassword_controllerim>(
          builder: (controller) => controller.statusRequest ==
                  StatusRequest.loading
              ? const Center(child: Text("Loading..."))
              : Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                  child: ListView(
                    children: [
                      const cusrtomtitlelogin(text: "   التاكد من الحساب  "),
                      const customtitletowlogin(
                        text2:
                            " للتاكد من حسابك قم بادخال كلمه المرور او رقم الهاتف",
                      ),
                      const SizedBox(height: 15),
                      /******************************************************** */

                      /****************************************************** */
                      customtextusername(
                        hinttext: "  البريد الكتروني",
                        labeltext: " ادخل البريد الكتروني",
                        iconData: Icons.email_outlined,
                        mycontroller: controller.email,
                        valid: (val) {
                          return VaildInput(val!, 6, 30, "email");
                        },
                        isNumber: false,
                      ),
                      /*************************************************************** */
                      /* customtextusername(
              hinttext: "   رقم الهاتف",
              labeltext: " ادخل رقم الهاتف",
              iconData: Icons.phone_android_outlined,
              mycontroller: controller.phon,
              valid: (val) {
                return VaildInput(val!, 5, 40, "phone");
              },
              isNumber: true,
            ),*/
                      /**************************************************** */

                      /********************************************************* */

                      custtombuttonauth(
                        text: "تحقق ",
                        onPressed: () {
                          controller.checkemail();
                        },
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                )),
    );
  }
}
