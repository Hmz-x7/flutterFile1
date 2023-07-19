// ignore_for_file: unused_import

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class customtitletowlogin extends StatelessWidget {
  final String text2;
  const customtitletowlogin({super.key, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: Text(text2,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: Appcolor.lightmoovtomatch)),
    );
  }
}
