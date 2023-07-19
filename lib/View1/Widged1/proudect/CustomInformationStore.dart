import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

class CustomInformationStore extends StatelessWidget {
  final String? storensme;
  final int? pricedelivery;
  const CustomInformationStore(
      {super.key, required this.storensme, required this.pricedelivery});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolor.lightmoov2,
      ),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.only(bottom: 2, left: 5),
              height: 130,
              child: Image.asset("images/r.jpg")),
          const SizedBox(width: 44),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              SizedBox(height: 20),
              Text(
                "storensme",
                textAlign: TextAlign.end,
              ),
              SizedBox(height: 20),
              Text("price delivery"),
              SizedBox(height: 20),
              Icon(
                Icons.face_retouching_natural_sharp,
                color: Appcolor.lightmoov3,
              )
            ],
          ),
        ],
      ),
    );
  }
}
