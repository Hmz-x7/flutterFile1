// ignore_for_file: unused_import

import 'package:angeldelivery/Conteroller1/onbordingconteroller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:get/get_state_manager/src/simple/get_view.dart';

class custombouttomonbording extends GetView<onbordingcontrollerim> {
  const custombouttomonbording({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 50),
      color: Appcolor.lightmoov3,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80)),
        onPressed: () {
          controller.next();
        },
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 2),
        child: const Text(
          "أستمـــر",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
