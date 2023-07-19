import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class custtombuttonauth extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const custtombuttonauth(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 70, left: 10, right: 10),
      child: MaterialButton(
          minWidth: 200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
          padding: const EdgeInsets.symmetric(vertical: 13),
          onPressed: onPressed,
          color: Appcolor.lightmoov3,
          textColor: Appcolor.Wight,
          child: Text(text)),
    );
  }
}
