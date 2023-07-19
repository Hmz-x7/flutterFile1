// ignore_for_file: non_constant_identifier_names, unnecessary_string_interpolations

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/View1/Widged1/Cart/buttonCoupon.dart';
import 'package:angeldelivery/View1/Widged1/Cart/buttoncart.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class CustomButtonNaviBarCart extends StatelessWidget {
  final String price;
  final String Discount;
  final String totel_price;

  const CustomButtonNaviBarCart(
      {super.key,
      required this.price,
      required this.Discount,
      required this.totel_price});

  @override
  Widget build(BuildContext context) {
    return

        //////////////////////////////////////////////////////////

        /////////////////////////////////////////////////////////////////////////
        Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolor.lightmoovtomatch,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 13),
            color: Appcolor.lightmoovtomatch,
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: TextFormField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          hintText: "Coupon Code"),
                    )),
                Expanded(
                    flex: 1,
                    child: BottomCoupon(
                        textbutton: 'Applay', onPressedcoupon: () {}))
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    "   Price",
                    style: TextStyle(fontSize: 15),
                  )),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "$price",
                    style: const TextStyle(fontSize: 15),
                  )),
            ],
          ),
          const Divider(
            color: Appcolor.lightmoov2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    "Discount",
                    style: TextStyle(fontSize: 15),
                  )),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "$Discount",
                    style: const TextStyle(fontSize: 15),
                  )),
            ],
          ),
          const Divider(
            color: Appcolor.lightmoov3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                    "   Totel Price",
                    style: TextStyle(
                        fontSize: 15,
                        color: Appcolor.lightmoov3,
                        fontWeight: FontWeight.bold),
                  )),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "$totel_price",
                    style: const TextStyle(
                        fontSize: 15,
                        color: Appcolor.lightmoov3,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
          const Divider(
            color: Appcolor.lightmoov3,
          ),
          CustomButtonCart(
              textbutton: "order",
              onPressed: () {
                Get.toNamed(AppRoute.login);

                // Get.toNamed(AppRoute.Checkout);
              }),
        ],
      ),
    );
  }
}
