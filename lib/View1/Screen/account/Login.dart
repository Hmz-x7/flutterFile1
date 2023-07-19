import 'package:angeldelivery/Conteroller1/account/login_controller.dart';
import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Functions/VaildInput.dart';
import 'package:angeldelivery/Core1/Functions/alertExitApp.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomButtonAuth.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTextSignUpOrlogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTextUsername.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleLogin.dart';
import 'package:angeldelivery/View1/Widged1/login/CustomTitleTwoLogin.dart';
import 'package:angeldelivery/View1/Widged1/login/LogoAuthImage.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../Core1/Class1/crud.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(logincontrollerIm());
    //Get.put(Crud());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Appcolor.Wight,
        title: Text("12 ".tr,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Appcolor.Wight)),
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<logincontrollerIm>(
            builder: (controller) => controller.statusRequest ==
                    StatusRequest.loading
                ? const Center(
                    child: Text("Loading..."),
                  )
                : Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 35, vertical: 15),

                    /////////////////////////////////////////
                    child: Form(
                      key: controller.formstate,
                      child: ListView(
                        children: [
                          const logouth(), //======================================
                          cusrtomtitlelogin(text: "25".tr),
                          customtitletowlogin(
                            text2: "26".tr,
                          ),
                          const SizedBox(height: 15),
                          /******************************************************** */
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
                          /****************************************************** */

                          GetBuilder<logincontrollerIm>(
                            builder: (controller) => customtextusername(
                                //  mycontroller: controller.password,
                                hinttext: "  28".tr,
                                labeltext: " 7".tr,
                                iconData: Icons.lock_outline,
                                mycontroller: controller.password,
                                valid: (val) {
                                  return VaildInput(val!, 3, 30, "password");
                                },
                                isNumber: false,
                                obscureText: controller.isShowPassword,
                                onTapicon: () {
                                  controller.ShowPassword_fun();
                                }),
                          ),
                          /********************************************************* */

                          InkWell(
                            onTap: () {
                              controller.gotoforgetpassword();
                            },
                            child: Text(
                              "  10".tr,
                              style:
                                const  TextStyle(color: Appcolor.lightmoovtomatch),
                              textAlign: TextAlign.end,
                            ),
                          ),
                          custtombuttonauth(
                            text: "12 ".tr,
                            onPressed: () {
                              controller.Login();
                            },
                          ),
                          customsigupOrlogin(
                            textone: " 5".tr,
                            texttwo: "11  ".tr,
                            onTap: () {
                              controller.gotosigup();
                            },
                          ),
                          //   const SizedBox(height: 15),
                        ],
                      ),
                    ),
                  ),
          )),
    );
  }
}
