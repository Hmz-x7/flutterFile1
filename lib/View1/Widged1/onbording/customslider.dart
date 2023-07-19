// ignore_for_file: camel_case_types, unused_local_variable

import 'package:angeldelivery/Conteroller1/onbordingconteroller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Data1/DataSource/Static/static.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class customslideronbording extends GetView<onbordingcontrollerim> {
  const customslideronbording({super.key});

  @override
  Widget build(BuildContext context) {
    var currentpage;
    return PageView.builder(
      controller: controller.pageController,
      //استدعاء داله التغير
      onPageChanged: (val) {
        controller.onpagechanged(val);
      },
      itemCount: onbordinglist.length,
      /*
      itemBuilder: (context, i) => Column(
  children: [
    const SizedBox(height: 50),
    Text(
      onbordinglist[currentIndex.value].title!,
      style: const TextStyle(
          color: Appcolor.orang, fontFamily: "static", fontSize: 20),
    ),
    const SizedBox(height: 100),
    Image.asset(onbordinglist[currentIndex.value].image,
      width: 50, height: 100, fit: BoxFit.fill),
    const SizedBox(height: 100),
    Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Text(
        onbordinglist[currentIndex.value].body!,
        textAlign: TextAlign.center,
        style: const TextStyle(
            height: 2,
            fontFamily: "static",
            color: Appcolor.lightgry,
            fontSize: 14),
      )),
  ],
),
*/

      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(height: 50),
          Text(
            onbordinglist[i].title!,
            style: const TextStyle(
                color: Appcolor.lightmoov3, fontFamily: "static", fontSize: 20),
          ),
          const SizedBox(height: 40),
          /********************************************** */
          Image.asset(
            "images/b1.PNG",
            width: double.infinity,
            height: 120,
          ),
          /*
          Image.asset(onbordinglist[i].image,
              width: 50, height: 100, fit: BoxFit.fill),*/
          /******************************************* */
          const SizedBox(height: 100),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              onbordinglist[i].body!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  height: 2,
                  fontFamily: "static",
                  color: Appcolor.lightmoov2,
                  fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
