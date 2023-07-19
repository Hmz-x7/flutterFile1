import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/View1/Screen/order/dialograting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPedingInfo extends StatelessWidget {
  final bool isactive;
  const CustomPedingInfo({super.key, required this.isactive});

  @override
  Widget build(BuildContext context) {
    return Card(
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
                  style: TextStyle(color: Appcolor.Black, fontSize: 16)),
              const SizedBox(height: 8),
              const Text("Delivery Price :  200\$",
                  style: TextStyle(color: Appcolor.Black, fontSize: 16)),
              const SizedBox(height: 8),
              const Text("Pyment Type : cash ",
                  style: TextStyle(color: Appcolor.Black, fontSize: 16)),
              const SizedBox(height: 8),
              const Text("Order Status : order is being prepared ",
                  style: TextStyle(color: Appcolor.Black, fontSize: 16)),
              const SizedBox(height: 8),
              const Text(" Data and Day  : 3/2/2023  10.00am  ",
                  style: TextStyle(color: Appcolor.Black, fontSize: 16)),

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
                  textColor: Appcolor.Wight,
                ),
              ),
              ///////////////////////////////////////////////////////
              const Divider(
                color: Appcolor.lightmoov3,
              ),
              //////////////////////you can delet if stor not agree////////////////////////////////////

              Container(
                //width: 50,
                padding: const EdgeInsets.only(left: 110, right: 100),
                //   margin: EdgeInsets.all(20),
                child: MaterialButton(
                  onPressed: () {
                    // Get.toNamed(AppRoute.DetilesOrder);
                  },
                  // ignore: sort_child_properties_last
                  child: const Text(
                    "Delet The Order",
                  ),
                  color: isactive == true
                      ? Appcolor.lightmoov3
                      : Appcolor.lightmoov2,
                  textColor: Appcolor.Wight,
                ),
              ),
              ////////////////////////////////////////////////////////////
              const Divider(
                color: Appcolor.lightmoov3,
              ),

              //////////////////////you can delet if stor not agree////////////////////////////////////

              Container(
                padding: const EdgeInsets.only(left: 125, right: 100),
                //   margin: EdgeInsets.all(20),
                child: MaterialButton(
                  minWidth: 100,
                  onPressed: () {
                    showdilogerating(context);
                  },
                  // ignore: sort_child_properties_last
                  child: const Text(
                    "Rating",
                  ),
                  color: isactive == true
                      ? Appcolor.lightmoov3
                      : Appcolor.lightmoov2,
                  textColor: Appcolor.Wight,
                ),
              ),
              const Divider(
                color: Appcolor.lightmoov3,
              ),
            ]),
      ),
    );
  }
}
