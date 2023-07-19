// ignore_for_file: prefer_const_constructors

import 'package:angeldelivery/Conteroller1/Homecontroller/homecontroller.dart';
import 'package:angeldelivery/View1/Widged1/home/customappbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    Homecontrollerim controller = Get.put(Homecontrollerim());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            customappbar(
              titleappbar: "البحث داخل المطعم",
              onPressedicon: () {},
              onPressedsearch: () {
                controller.onssearchprou();
              },
              mycontroller: controller.search!,
              onChanged: (val) {
                controller.checksearch(val);
              },
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
