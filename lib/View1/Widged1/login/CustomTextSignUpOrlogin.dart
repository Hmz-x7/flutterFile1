// ignore_for_file: unused_import

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class customsigupOrlogin extends StatelessWidget {
  final String textone;
  final String texttwo;
  final Function()? onTap;
  const customsigupOrlogin(
      {super.key,
      required this.textone,
      required this.texttwo,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTap,
          child: Text(textone,
              style: const TextStyle(
                  color: Appcolor.lightmoov3, fontWeight: FontWeight.bold)),
        ),
        const SizedBox(width: 3),
        Text(texttwo,
            style: const TextStyle(
                color: Appcolor.lightmoovtomatch, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
