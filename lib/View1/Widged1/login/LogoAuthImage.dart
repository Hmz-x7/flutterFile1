// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class logouth extends StatelessWidget {
  const logouth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 50,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        image: const DecorationImage(
            image: AssetImage(
              "images/lo1.PNG",
            ),
            fit: BoxFit.fill),
      ), /*
       child: Image.asset(
        //     ImageAsset.login,
        height: 180,
      ),*/
    );
  }
}
