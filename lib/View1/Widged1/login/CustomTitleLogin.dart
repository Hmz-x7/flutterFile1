// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class cusrtomtitlelogin extends StatelessWidget {
  final String text;

  const cusrtomtitlelogin({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headlineLarge,
    );
  }
}
