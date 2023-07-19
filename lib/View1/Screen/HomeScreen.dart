// ignore_for_file: unused_import, unused_local_variable, camel_case_types

import 'dart:io';

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/View1/Screen/navbar.dart';
import 'package:angeldelivery/View1/Widged1/home/custombouttonAppBarS.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../Conteroller1/Homecontroller/Homescreencontroller.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    homescreencontrollerim controller = Get.put(homescreencontrollerim());
    return GetBuilder<homescreencontrollerim>(
      builder: (controller) => Scaffold(
        drawer: Navbar(),
        // backgroundColor: Color.fromARGB(255, 170, 26, 189),
        //الي بالوسط
        floatingActionButton: Container(
          padding: const EdgeInsets.only(left: 5, top: 10),
          child: FloatingActionButton(
            backgroundColor: const Color.fromARGB(204, 152, 85, 184),
            onPressed: () {
              Get.toNamed(AppRoute.Cart);
            },
            child: const Icon(Icons.shopping_basket_outlined),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        /******************************************************** */

        bottomNavigationBar: Container(
          // color: Colors.amber,
          margin: const EdgeInsets.all(2),
          padding: const EdgeInsets.all(2),
          child: BottomAppBar(
            height: 60,
            color: Appcolor.lightmoov3,
            shape: const CircularNotchedRectangle(),
            notchMargin: 2,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Row(children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        custombuttonappbar(
                          textbutton: "الصفحه الرئيسيه",
                          iconData: Icons.home,
                          onPressed: () {
                            controller.changepage(0);
                          },
                          active: controller.currentpage == 0 ? true : false,
                        ),
                        custombuttonappbar(
                          textbutton: "الاعدات ",
                          iconData: Icons.settings,
                          onPressed: () {
                            Get.toNamed(AppRoute.Setting);
                            controller.changepage(1);
                          },
                          active: controller.currentpage == 1 ? true : false,
                        ),
                      ],
                    ),
                    // const Spacer(),
                    Expanded(
                      child: Row(
                        children: [
                          custombuttonappbar(
                            textbutton: "المفضله ",
                            iconData: Icons.favorite_outline,
                            onPressed: () {
                              Get.toNamed(AppRoute.Favorite);
                              controller.changepage(2);
                            },
                            active: controller.currentpage == 2 ? true : false,
                          ),
                          //   SizedBox(width: 8),
                          custombuttonappbar(
                            textbutton: "المتاجر \nالقريبه ",
                            iconData: Icons.store_mall_directory_outlined,
                            onPressed: () {
                              controller.changepage(3);
                            },
                            active: controller.currentpage == 3 ? true : false,
                          ),
                        ],
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),

        /*********************************************************** */
        // controller.listpage.elementAt(controller.currentpage),
        body: WillPopScope(
            child: controller.listpage.elementAt(controller.currentpage),
            onWillPop: () {
              Get.defaultDialog(
                  title: "Warring",
                  titleStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Appcolor.lightmoov3),
                  middleText: "Do You Want TO Exit ",
                  onCancel: () {},
                  cancelTextColor: Appcolor.lightmoov3,
                  confirmTextColor: Appcolor.lightmoov3,
                  buttonColor: Appcolor.lightmoov4,
                  onConfirm: () {
                    exit(0);
                  });
              return Future.value(false);
            }),

        /****************************************************************** */
      ),
    );
  }
}
