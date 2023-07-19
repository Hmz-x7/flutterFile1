import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class custombuttonappbar extends StatelessWidget {
  final void Function()? onPressed;
  final String textbutton;
  final IconData iconData;
  final bool? active;

  const custombuttonappbar(
      {super.key,
      this.onPressed,
      required this.textbutton,
      required this.iconData,
      required this.active});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: 30,
            color: active == true ? Appcolor.grywhit : Appcolor.Wight,
          ),
          Text(
            textbutton,
            style: TextStyle(
              fontSize: 12,
              color: active == true ? Appcolor.grywhit : Appcolor.Wight,
            ),
          ),
        ],
      ),
    );
  }
}
