// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class customtitlehome extends StatelessWidget {
  const customtitlehome({super.key, required this.titlehome});
  final String titlehome;
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        titlehome,
        textAlign: TextAlign.right,
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
