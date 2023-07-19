import 'package:angeldelivery/Conteroller1/onbordingconteroller.dart';
import 'package:angeldelivery/View1/Widged1/onbording/custombottm.dart';
import 'package:angeldelivery/View1/Widged1/onbording/customslider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../Widged1/onbording/customdotonbording.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(onbordingcontrollerim()); //الكلاس الي يحتوي ع الدوال
    return  Scaffold(
        //  backgroundColor: Color.fromARGB(246, 252, 244, 235),
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: customslideronbording(), //داله البدي
        ),
        //فيبه البوتن الي مارح تتحرك
        Expanded(
            flex: 1,
            child: Column(
              children: [
                costomdotonbording(),
                Spacer(flex: 2),
                custombouttomonbording(),
              ],
            ))
      ],
    ));
  }
}
