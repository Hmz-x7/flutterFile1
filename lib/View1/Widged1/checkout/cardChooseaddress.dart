import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class CardChooesAdress extends StatelessWidget {
  final String titleadress;
  final String titleCity;
  final bool isactive;

  const CardChooesAdress(
      {super.key,
      required this.titleadress,
      required this.titleCity,
      required this.isactive});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        color: isactive == true ? Appcolor.lightmoov3 : Appcolor.lightmoov2,
        // ignore: unnecessary_string_interpolations
        child: ListTile(
          title: Text("$titleadress",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      isactive == true ? Appcolor.Wight : Appcolor.lightmoov3,
                  fontSize: 16)),
          subtitle: Text("$titleCity",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      isactive == true ? Appcolor.Wight : Appcolor.lightmoov3,
                  fontSize: 16)),
        ),
      ),
    );
  }
}
