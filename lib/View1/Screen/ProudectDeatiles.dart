import 'package:angeldelivery/Conteroller1/Proudect/ProudcetDeatiles_Controller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/View1/Widged1/proudcetdeatiles/customAddtobasct.dart';
import 'package:angeldelivery/View1/Widged1/proudcetdeatiles/customPrice.dart';
import 'package:angeldelivery/View1/Widged1/proudcetdeatiles/customTheStart&Image.dart';
import 'package:angeldelivery/View1/Widged1/proudcetdeatiles/customdescription.dart';
import 'package:flutter/material.dart';

// ignore: unused_import

import 'package:get/get.dart';

import '../Widged1/proudcetdeatiles/customNote.dart';

class ProucetDeatiles extends GetView<ProudectDeatilesControllerIm> {
  const ProucetDeatiles({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProudectDeatilesControllerIm());
    return Scaffold(
      bottomNavigationBar: const customAddtobasct(),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: ListView(children: [
          const customTheStartandimage(),
          /******************************************************************************** */
          const SizedBox(height: 110),
          Container(
            margin: const EdgeInsets.all(10),
            child:
                //CrossAxisAlignment.center star ***//
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  // Text(controller.items.itemname))
                  Text(" الهدايا",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Appcolor.boldmoov, fontSize: 20)),
                  /**************************de********************* */
                  const SizedBox(height: 10),
                  const customDescription(
                    Description: 'Description',
                  ),
                  /***********note**************************************** */
                  const SizedBox(height: 10),
                  const customNote(Note: 'Note'),

                  /******************************+ -******************************** */
                  customPrice(
                      onAdd: () {},
                      onRemove: () {},
                      Count: "2",
                      Price: "Price"),
                  /************************************************************** */
                  const SizedBox(height: 10)
                ]),
          ),
          /********************************************************************************* */
        ]),
      ),
    );
  }
}
