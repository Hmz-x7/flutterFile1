// ignore_for_file: unused_import, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, camel_case_types

import 'package:angeldelivery/Conteroller1/Homecontroller/homecontroller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:get/get.dart';

class listnameappcategories extends GetView<Homecontrollerim> {
  final nameapp;
  final minmamdelivery;
  final evaluation;
  listnameappcategories({
    super.key,
    this.nameapp,
    this.minmamdelivery,
    this.evaluation,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolor.lightmoov3,
      ),
      child: SizedBox(
          height: 350,
          child: ListView.builder(
              itemCount: 30,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, i) {
                return InkWell(
                  onTap: () {
                    controller.gotoAvailable_stores(
                        controller.categories, controller.selecedCat);
                  },
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        //   height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Appcolor.lightmoov2,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 10),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                /*==================1===============================*/
                                Text(nameapp,
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                                /*  Icon(evaluation,
                                      color:
                                          const Color.fromARGB(248, 248, 244, 12),
                                      size: 20)*/
                              ],
                            ),

                            /*====================================================================*/
                            const SizedBox(width: 160),
                            /*======================Column2========================================*/
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(minmamdelivery,
                                      style:
                                          const TextStyle(color: Colors.white)),
                                   Row(
                                    children: [
                                      Text("200R",
                                          style:
                                              TextStyle(color: Colors.white)),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.car_repair,
                                        color: Appcolor.Wight,
                                        size: 25,
                                      ),
                                      Icon(
                                        Icons.star,
                                        color: Appcolor.Yellow,
                                        size: 25,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            /*================================================================*/
                          ],
                        ),
                      ),
                      /*       Container(
                                height: 120,
                                width: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(115, 98, 133, 89),
                                ),
                              )*/
                    ],
                  ),
                );
              })),
    );
  }
}
