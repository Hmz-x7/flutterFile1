// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, use_key_in_widget_constructors, camel_case_types

import 'package:angeldelivery/Conteroller1/Proudect/Proudect_Controller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Data1/Model/productmodel.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class listCategoriesProudect extends GetView<ProudectcontrollerIm> {
  late final ProductModel productmodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolor.lightmoov2,
      ),
      height: 40,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            /**************************************************************************************** */
            ///InkWellعشان اقدر انتقل
            return Categories(
              i: index,
              titlenameapp: 'الاكثر طلبا',
            );
          },
          itemCount: 15),
    );
  }
}

class Categories extends GetView<ProudectcontrollerIm> {
  final int? i;
  final String titlenameapp;

  const Categories({
    Key? key,
    required this.i,
    required this.titlenameapp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // controller.gettoproudect(controller.categories, i!);
        controller.changecat(i!);
      },
      child: Column(
        children: [
          /////Container for images catapp////////////
          GetBuilder<ProudectcontrollerIm>(
            builder: (controller) => Container(
              decoration: controller.selecedCat == i
                  ? const BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      border: Border(
                          bottom:
                              BorderSide(color: Appcolor.lightmoov3, width: 3)),
                    )
                  : null,
              child: Text(titlenameapp,
                  style: const TextStyle(
                      fontFamily: AutofillHints.namePrefix,
                      fontSize: 18,
                      color: Appcolor.Black)
                  // Theme.of(context).textTheme.bodyMedium,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
