import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class customcardhome extends StatelessWidget {
  const customcardhome({super.key, required this.tiltle, required this.body});
  final String tiltle;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Stack(children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Appcolor.lightmoov3,
          ),
          child: ListTile(
            title: Text(
              tiltle,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            subtitle: Text(
              body,
              textAlign: TextAlign.right,
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ),
        /**************************4*********************** */
        ////1r////////////
        Positioned(
          top: -5,
          bottom: 5,
          right: -10,
          child: Container(
            height: 110,
            width: 150,
            decoration: BoxDecoration(
                color: Appcolor.lightmoov2,
                borderRadius: BorderRadius.circular(300)),
          ),
        ),
        ////2//////////////////////
        Positioned(
          top: -5,
          bottom: 5,
          left: -10,
          child: Container(
            height: 110,
            width: 140,
            decoration: BoxDecoration(
                color: Appcolor.lightmoov2,
                borderRadius: BorderRadius.circular(300)),
          ),
        ),

        ///1////////////////////
        Positioned(
          top: -6,
          bottom: 15,
          left: -8,
          child: Container(
            height: 120,
            width: 115,
            decoration: BoxDecoration(
                color: Appcolor.lightmoovtomatch,
                borderRadius: BorderRadius.circular(200)),
          ),
        ),
      ]),
    );
  }
}
