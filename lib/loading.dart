import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class loading4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Lottie.asset(
        "images/lottie/notinternet.json",
      ),
    );
  }
}
