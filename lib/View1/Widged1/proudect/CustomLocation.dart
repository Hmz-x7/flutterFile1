// ignore_for_file: unused_import

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class customLocation extends StatelessWidget {
  final iconloction;
  const customLocation({super.key, required this.iconloction});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolor.lightmoov2,
      ),
      child: const Icon(
        Icons.location_on_outlined,
        color: Appcolor.lightmoov3,
        size: 30,
      ),
    );
  }
}
