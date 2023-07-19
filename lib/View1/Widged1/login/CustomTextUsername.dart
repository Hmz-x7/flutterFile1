// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

import '../../../Core1/Constant/color.dart';

// ignore: camel_case_types
class customtextusername extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapicon;

  // final String TextEditingController? mycontroller;

  const customtextusername({
    Key? key,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
    this.obscureText,
    this.onTapicon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false ? false : true,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: mycontroller,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
            label: Text(
              labeltext,
              textAlign: TextAlign.start,
            ),
            
            hintText: hinttext,
            hintStyle: const TextStyle(
              fontSize: 12,
              color: Appcolor.lightmoovtomatch,
            ),
            suffixIcon: InkWell(
              child: Icon(iconData),
              onTap: onTapicon,
            ),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
