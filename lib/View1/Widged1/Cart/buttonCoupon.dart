import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomCoupon extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressedcoupon;
  const BottomCoupon(
      {super.key, required this.textbutton, this.onPressedcoupon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: MaterialButton(
        color: Appcolor.lightmoov3,
        textColor: Colors.white,
        onPressed: onPressedcoupon,
        child: Text(textbutton,
            style: const TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
