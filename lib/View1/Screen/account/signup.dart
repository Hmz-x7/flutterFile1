// ignore_for_file: camel_case_types

import 'package:angeldelivery/Conteroller1/account/signup_controller.dart';
import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Functions/VaildInput.dart';
import 'package:angeldelivery/Core1/Functions/alertExitApp.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomButtonAuth.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTextSignUpOrlogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTextUsername.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleLogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleTwoLogin.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    //lazyPut  من الميموري عشان يتم الحذف
    Get.put( signupcontrollerIm());
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
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            image: const DecorationImage(
                opacity: 2.10,
                image: AssetImage("images/lo1.PNG"),
                fit: BoxFit.fill),
          ),
          child: WillPopScope(
            onWillPop: alertExitApp,
            child: GetBuilder<signupcontrollerIm>(
              builder: (controller) => controller.statusRequest ==
                      StatusRequest.loading
                  ? const Center(child: Text("Loading...."))
                  : Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 15),
                      ///////////////////////////////
                      child: Form(
                        key: controller.formstate,
                        child: ListView(
                          children: [
                            const cusrtomtitlelogin(text: "اهلاوسهلا"),
                            const SizedBox(height: 10),
                            const customtitletowlogin(
                              text2:
                                  "  قم بتسجيل الدخول عبر ادخال اسم المستخدم وكلمة المرور",
                            ),
                            const SizedBox(height: 15),
                            /******************************************************** */
                            customtextusername(
                              hinttext: " ادخل اسم المستخدم",
                              labeltext: "اسم المستخدم",
                              iconData: Icons.person_outline,
                              valid: (val) {
                                return VaildInput(val!, 5, 30, "username");
                              },
                              isNumber: false,
                              /***************db***** */
                              mycontroller: controller.username,
                            ),
                            /****************************************************** */
                            customtextusername(
                              isNumber: false,
                              valid: (val) {
                                return VaildInput(val!, 5, 100, "email");
                              },
                              mycontroller: controller.email,
                              hinttext: "  9".tr,
                              labeltext: " 27  ".tr,
                              iconData: Icons.email_outlined,
                            ),
                            /*************************************************************** */
                            GetBuilder<signupcontrollerIm>(
                              builder: (controller) => customtextusername(
                                hinttext: "   رقم الهاتف",
                                labeltext: " ادخل رقم الهاتف",
                                iconData: Icons.phone_android_outlined,
                                mycontroller: controller.phone,
                                valid: (val) {
                                  return VaildInput(val!, 3, 30, "phone");
                                },
                                isNumber: true,
                              ),
                            ),
                            /**************************************************** */
                            GetBuilder<signupcontrollerIm>(
                              builder: (controller) => customtextusername(
                                hinttext: " ادخل كلمه المرور",
                                labeltext: "كلمه المرور",
                                iconData: Icons.lock_outline,
                                valid: (val) {
                                  return VaildInput(val!, 5, 30, "password");
                                },
                                obscureText: controller.isShowPassword,
                                onTapicon: () {
                                  controller.ShowPassword_fun();
                                },
                                isNumber: false,
                                mycontroller: controller.password,
                              ),
                            ),
                            /********************************************************* */

                            custtombuttonauth(
                              text: "Sign UP",
                              onPressed: () {
                                print('pressed');
                                try {
                                  controller.signup();
                                } catch (e) {
                                  print('error is $e');
                                }
                              },
                            ),
                            customsigupOrlogin(
                              textone: " اشتراك ",
                              texttwo: " امتلك حساب",
                              onTap: () {
                                controller.gotosigup();
                              },
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                      ),
                    ),
            ),
          ),
        ));
  }
}
