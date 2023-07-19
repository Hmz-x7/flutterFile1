// ignore_for_file: unused_import

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class customAddtobasct extends StatelessWidget {
  const customAddtobasct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 60,
      // color: Colors.amber,
      child: Column(
        children: [
          MaterialButton(
            height: 50,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: () {
              Get.toNamed(AppRoute.login);
            },
            color: Appcolor.lightmoov3,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "اضافه الي السله",
                  style: TextStyle(
                      color: Appcolor.Wight, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 20),
                Icon(Icons.countertops_rounded),
              ],
            ),
            /************************************************* */
          ),
        ],
      ),
    );
  }
}
