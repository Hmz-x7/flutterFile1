import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class TopcartForItemsnum extends StatelessWidget {
  final String title_masseg;
  const TopcartForItemsnum({super.key, required this.title_masseg});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 300,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolor.lightmoovtomatch,
      ),
      child: Text(
        title_masseg,
        textAlign: TextAlign.center,
        style: TextStyle(color: Appcolor.lightmoov3),
      ),
    );
  }
}
