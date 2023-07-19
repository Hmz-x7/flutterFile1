// ignore_for_file: unused_import

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class customTheStartandimage extends StatelessWidget {
  const customTheStartandimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //عشان ماتختفي
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          decoration: const BoxDecoration(
              color: Appcolor.lightmoov3,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        Positioned(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                color: const Color.fromARGB(87, 211, 124, 252),
                borderRadius: BorderRadius.circular(200)),
          ),
        ),
        ////2//////////////////////
        Positioned(
          top: 1,
          bottom: 2,
          left: -10,
          right: 40,
          child: Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
                color: Appcolor.lightmoov2,
                borderRadius: BorderRadius.circular(300)),
          ),
        ),

        /**********************************db**** */
        const Positioned(
          top: 90,
          left: 20,
          right: 20,
          //hero()
          //////////////////////////////////////////////////////////////image//////////////
          child: CircleAvatar(
            backgroundImage: AssetImage("images/b.jpg"),
            radius: 110,
          ),
        ),
        /******************************************************* */
      ],
    );
  }
}
