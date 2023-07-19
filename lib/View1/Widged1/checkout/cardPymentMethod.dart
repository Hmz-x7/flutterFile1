import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class CartPymantMethod extends StatelessWidget {
  final String titel;
  final bool isactive;
  const CartPymantMethod(
      {super.key, required this.titel, required this.isactive});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isactive == true ? Appcolor.lightmoov3 : Appcolor.lightmoov2,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        titel,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: isactive == true ? Appcolor.Wight : Appcolor.lightmoov3,
            fontSize: 16),
      ),
    );
  }
}
