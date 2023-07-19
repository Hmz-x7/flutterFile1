// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
// ignore: unused_import

class deliveryinformmation extends StatefulWidget {
  const deliveryinformmation({super.key});

  @override
  State<deliveryinformmation> createState() => _deliveryinformmationState();
}

class _deliveryinformmationState extends State<deliveryinformmation> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // color: Appcolor.lightmoov4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        child: const ListTile(
          title: Text("Delivery Information", textAlign: TextAlign.center),
          subtitle: Text("Name , Phone Nuber", textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
