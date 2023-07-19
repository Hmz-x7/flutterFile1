import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class Totalpricefordetiles extends StatelessWidget {
  const Totalpricefordetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: const Text("Totel Price :1500.00",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Appcolor.lightmoov3,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
