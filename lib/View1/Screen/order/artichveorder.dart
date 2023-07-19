import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';

import '../../../Core1/Constant/routes.dart';

class ArtchiveOrder extends StatelessWidget {
  const ArtchiveOrder({super.key});

  get isactive => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            " Artichve Orders",
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              SizedBox(height: 12),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  color: Appcolor.grywhit,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Order Number : #22",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Appcolor.lightmoov3,
                                fontSize: 18)),
                        const Divider(
                          color: Appcolor.lightmoov3,
                        ),
                        const Text("Order Price : 200\$",
                            style:
                                TextStyle(color: Appcolor.Black, fontSize: 16)),
                        const SizedBox(height: 8),
                        const Text("Delivery Price :  200\$",
                            style:
                                TextStyle(color: Appcolor.Black, fontSize: 16)),
                        const SizedBox(height: 8),
                        const Text("Pyment Type : cash ",
                            style:
                                TextStyle(color: Appcolor.Black, fontSize: 16)),
                        const SizedBox(height: 8),
                        const Text("Order Status : order is being prepared ",
                            style:
                                TextStyle(color: Appcolor.Black, fontSize: 16)),
                        const SizedBox(height: 8),
                        const Text(" Data and Day  : 3/2/2023  10.00am  ",
                            style:
                                TextStyle(color: Appcolor.Black, fontSize: 16)),

                        const SizedBox(height: 10),
                        const Divider(
                          color: Appcolor.lightmoov3,
                        ),
                        const Text(" Totel Price : 180\$ ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Appcolor.lightmoov3,
                                fontSize: 18)),
                        const Divider(
                          color: Appcolor.lightmoov3,
                        ),
                        /////////////////////////////////////////////////////////////////

                        Container(
                          padding: const EdgeInsets.only(left: 120, right: 100),
                          //   margin: EdgeInsets.all(20),
                          child: MaterialButton(
                            onPressed: () {
                              Get.toNamed(AppRoute.DetilesOrder);
                            },
                            // ignore: sort_child_properties_last
                            child: const Text(
                              "Details Order",
                            ),
                            color: isactive == true
                                ? Appcolor.lightmoov3
                                : Appcolor.lightmoov2,
                            textColor: Appcolor.lightmoov3,
                          ),
                        ),
                        ///////////////////////////////////////////////////////
                        const Divider(
                          color: Appcolor.lightmoov3,
                        ),

                        //////////////////////you can delet if stor not agree////////////////////////////////////

                        ////////////////////////////////////////////////////////////
                      ]),
                ),
              )
            ],
          ),
        ));
  }
}
