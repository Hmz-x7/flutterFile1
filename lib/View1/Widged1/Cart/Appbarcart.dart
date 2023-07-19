import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class Topappbar extends StatelessWidget {
  final String title;
  const Topappbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 3),
      //______________________________________________________________________________________//
      // ignore: prefer_const_constructors
      child: Row(
        children: [
          Expanded(
              child: Container(
            alignment: Alignment.centerLeft,
            /*   child: IconButton(onPressed: (){},
                   icon:  (const Icon(Icons.arrow_back,color: Appcolor.lightmoov3,))),*/
          )),
          Expanded(
            child: Container(
                alignment: Alignment.topCenter,
                // ignore: prefer_const_constructors
                margin: EdgeInsets.only(right: 10),
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Appcolor.lightmoov2,
                ),
                child: Text(
                  title,
                  style:
                      const TextStyle(fontSize: 20, color: Appcolor.lightmoov3),
                )),
          ),
          /*_____________________________________________________________*/
        ],
      ),
    );
  }
}
