// ignore_for_file: unused_import

import 'package:angeldelivery/Conteroller1/Homecontroller/offerscontroller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class customListOffers extends GetView<OffersController> {
  final bool active;
  const customListOffers({
    super.key,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 300,
        child: GridView.builder(
            scrollDirection: Axis.vertical,
            //  grideview....................?
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            //controller.data.lenghe...db
            itemCount: 10,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.74),
            itemBuilder: (BuildContext context, index) {
              return InkWell(
                  child: Card(
                elevation: 20,
                color: Appcolor.lightmoov2,
                child: Stack(children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //tagياخذ ال id حق الصور
                          //hero()
                          Image.asset("images/H.jpg"),
                          const Text(
                            "الهدايا",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Appcolor.lightmoov3),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                " Rating 3.5",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Appcolor.lightgry),
                              ),
                              const SizedBox(width: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ...List.generate(
                                      5,
                                      (index) => const Icon(
                                            Icons.star,
                                            size: 10,
                                            color: Appcolor.lightmoov3,
                                          ))
                                ],
                              ),
                            ],
                          ),
                          /********************************************** */
                          Row(
                            children: [
                              const Text(
                                "250.0\$ ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Appcolor.lightmoov3),
                              ),
                              IconButton(
                                  //شرط لما يختار المفضله تتغير
                                  onPressed: () {},
                                  icon: Icon(
                                    active
                                        ? Icons.favorite
                                        : Icons.favorite_border_outlined,
                                    color: Appcolor.lightmoov3,
                                  )),
                            ],
                          )
                        ]),
                  ),
                  //add image sale
                  // if(discount_table == "0")
                  Positioned(
                      top: 10,
                      left: 5,
                      child: Image.asset("images/sale.png", width: 30))
                ]),
              ));
            }),
      ),
    );
  }
}
