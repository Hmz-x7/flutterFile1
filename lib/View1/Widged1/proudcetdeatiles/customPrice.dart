// ignore_for_file: camel_case_types

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class customPrice extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String Count;
  final String Price;

  const customPrice(
      {super.key,
      required this.onAdd,
      required this.onRemove,
      required this.Count,
      required this.Price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.only(left: 20, top: 20),
          padding: const EdgeInsets.only(left: 20),
          width: 185,
          height: 58,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Appcolor.lightmoov2,
          ),
          child: Row(
            children: [
              /*====================+================================*/
              IconButton(
                  onPressed: onAdd,
                  icon: const Icon(Icons.add),
                  iconSize: 40,
                  color: Appcolor.lightmoov3),
              const SizedBox(width: 5),
              /*-======================Count=================================*/
              Container(
                padding: const EdgeInsets.only(top: 10),
                height: 50,
                width: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Appcolor.lightmoov3),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  Count,
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              /*================-==========================================*/
              const SizedBox(width: 5),
              IconButton(
                  onPressed: onRemove,
                  icon: const Icon(Icons.remove),
                  iconSize: 40,
                  color: Appcolor.lightmoov3),
            ],
          ),
        ),
        //  const Spacer(),
        const SizedBox(width: 20),

        /*=================Price=================================*/
        Text(
          Price,
          style: const TextStyle(
              color: Appcolor.lightmoov3,
              fontSize: 20,
              height: 2,
              fontFamily: AutofillHints.creditCardNumber),
        ),
        /*=====================================================*/
      ],
    );
  }
}
