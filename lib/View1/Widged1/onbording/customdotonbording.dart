// ignore_for_file: unused_import

import 'package:angeldelivery/Conteroller1/onbordingconteroller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Data1/DataSource/Static/static.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:get/get.dart';

class costomdotonbording extends StatelessWidget {
  const costomdotonbording({super.key});

  @override
  Widget build(BuildContext context) {
    //GetBuilderعشان نربط الدوت ب الصفحه
    return GetBuilder<onbordingcontrollerim>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
              onbordinglist.length,
              (index) => AnimatedContainer(
                    margin: const EdgeInsets.all(5),
                    duration: const Duration(milliseconds: 900),
                    width: controller.currentpage == index ? 10 : 5,
                    height: 2,
                    decoration: BoxDecoration(
                        color: Appcolor.lightmoov3,
                        borderRadius: BorderRadius.circular(10)),
                  ))
        ],
      ),
    );
  }
}
