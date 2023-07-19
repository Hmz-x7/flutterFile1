// ignore_for_file: unused_import

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customNote extends StatelessWidget {
  final String Note;
  const customNote({super.key, required this.Note});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Appcolor.lightmoov2),
      height: 35,
      //hintext
      child: Expanded(
          flex: 2,
          child: TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              isDense: true,
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              hintText: "Enter Your Note ",
            ),
          )),
    );
  }
}
