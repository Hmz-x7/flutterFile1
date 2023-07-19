import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class custombuttonlang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;
  const custombuttonlang({super.key, this.onPressed, required this.textbutton});

  get isactive => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        height: 60,
        width: 200,
        decoration: BoxDecoration(
          color: Appcolor.lightmoov3,
          borderRadius: BorderRadius.circular(20),
        ),
        child: MaterialButton(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          shape: const CircleBorder(side: BorderSide.none),
          onPressed: onPressed,
          child: Text(
            textbutton,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
