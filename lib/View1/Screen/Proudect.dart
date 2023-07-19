// ignore_for_file: unused_import, camel_case_types

import 'package:angeldelivery/Conteroller1/Proudect/Proudect_Controller.dart';
import 'package:angeldelivery/Conteroller1/favarite_controller.dart';
import 'package:angeldelivery/Data1/Model/productmodel.dart';
import 'package:angeldelivery/View1/Widged1/proudect/CustomInformationStore.dart';
import 'package:angeldelivery/View1/Widged1/proudect/CustomLocation.dart';
import 'package:angeldelivery/View1/Widged1/proudect/customListProudect.dart';
import 'package:angeldelivery/View1/Widged1/proudect/listCategoriesProudect.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../Widged1/home/customappbar.dart';

class proudect extends StatelessWidget {
  final ProductModel productModel;

  const proudect({super.key, required this.productModel});
  @override
  Widget build(BuildContext context) {
    Get.put(ProudectcontrollerIm());
    Get.put(FavoritController());

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            // customappbar(
            //   titleappbar: "البحث داخل المطعم",
            //   onPressedicon: () {},
            //   onPressedsearch: () {},
            //   onPressedmenu: () {},
            // ),
            const CustomInformationStore(
              pricedelivery: 500,
              storensme: "store name",
            ),
            const customLocation(
              iconloction: Icons.location_on_outlined,
            ),
            listCategoriesProudect(),
            const customListProudect(
                // productModel:ProductModel.fromJson(controller.data[index])
                active: true),
          ],
        ),
      ),
    );
  }
}
