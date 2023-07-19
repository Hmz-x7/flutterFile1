// ignore_for_file: unused_import

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customDescription extends StatelessWidget {
  final String Description;
  const customDescription({super.key, required this.Description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Appcolor.lightmoov2),
      height: 110,
      child: Text(Description,
          textAlign: TextAlign.start,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Appcolor.lightmoovtomatch, fontSize: 16)),
    );
  }
}
