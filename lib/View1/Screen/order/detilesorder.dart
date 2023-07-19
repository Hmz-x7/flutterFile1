import 'package:angeldelivery/Conteroller1/order/detilesOrdercontroller.dart';
import 'package:angeldelivery/View1/Widged1/Detiles_order/Tabledetiles.dart';
import 'package:angeldelivery/View1/Widged1/Detiles_order/Totalprice.dart';
import 'package:angeldelivery/View1/Widged1/Detiles_order/deliveryinfo.dart';
import 'package:flutter/material.dart';
// ignore: unused_import

import 'package:get/get.dart';
// ignore: unused_import
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DetilesOrder extends StatelessWidget {
  const DetilesOrder({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    OrderDetilesController controller = Get.put(OrderDetilesController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detiles Order",
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            /////////////////////////////////////////
            const TableDetilesOrder(),
            const SizedBox(height: 10),
            ///////////////////////////
            const Totalpricefordetiles(),
            ///////////////////////////////////////
            const deliveryinformmation(),
            ////////////////////map////////////////////////////
            Card(
              child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  height: 300,
                  width: double.infinity,
                  child: Text("Map Here!!!")
                  /*GoogleMap(
                  mapType: MapType.hybrid,
                  initialCameraPosition: controller.cameraPosition!,
                  onMapCreated: (GoogleMapController controllermap) {
                    controller.Completercontroller!.complete(controllermap);
                  },
                ),*/
                  ),
            )
          ],
        ),
      ),
    );
  }
}
