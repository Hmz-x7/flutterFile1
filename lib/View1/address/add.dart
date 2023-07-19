// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names

import 'package:angeldelivery/Conteroller1/adddress/add_controller.dart';
import 'package:angeldelivery/Core1/Class1/handlingdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddressAdd extends StatelessWidget {
  const AddressAdd({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    AddAddressconController controllerPage = Get.put(AddAddressconController());
    return Scaffold(
      appBar: AppBar(title: const Text("Add New Address")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Container(
          child: GetBuilder<AddAddressconController>(
        builder:
            // (
            (controllerPage) =>
                //  HandlingDataView(
                //  statusRequest: controllerPage.statusRequest,
                //  widget:
                Column(
          children: [
            if (controllerPage.kGooglePlex != null)
              Expanded(
                child: GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: controllerPage.kGooglePlex!,
                  onMapCreated: (GoogleMapController controllermap) {
                    controllerPage.Completercontroller!.complete(controllermap);
                  },
                ),
              ),
          ],
        ),
        // )
        //  ),
      )),
    );
  }
}
