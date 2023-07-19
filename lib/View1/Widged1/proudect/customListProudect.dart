// ignore_for_file: unused_import, sized_box_for_whitespace, camel_case_types, unnecessary_import, implementation_imports, prefer_const_constructors

import 'package:angeldelivery/Conteroller1/Proudect/Proudect_Controller.dart';
import 'package:angeldelivery/Conteroller1/favarite_controller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Data1/Model/productmodel.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class customListProudect extends GetView<ProudectcontrollerIm> {
  final bool active;
  // final ProductModel productModel;

  const customListProudect({
    super.key,
    required this.active,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.gotoproudctdeatiles("_______catid");
      },
      child: Container(
        height: 400,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          //  grideview....................?
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
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
                          Image.asset("images/Gifts.jpg",
                              width: 120, height: 120),
                          const Text(
                            "الهدايا",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Appcolor.lightmoov3),
                          ),
                          /* const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                " Rating 3.5",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Appcolor.lightgry),
                              ),
                              SizedBox(width: 10),

                              
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
                          ),*/
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
                              SizedBox(width: 20),
                              GetBuilder<FavoritController>(
                                //*************************************** */
                                builder: (controller) => IconButton(
                                    //شرط لما يختار المفضله تتغير
                                    onPressed: () {
                                      /*  if(controller.isfavorit[ productModel.productid]=="1"){
                                        controller.setfavorite(productModel.productid, "0");
                                        controller.removefavorite(productModel.productid);
                                      }else{
                                      controller.setfavorite(productModel.productid, "0");
                                    controller.addfavorite(productModel.productid);
                                      }*/
                                    },
                                    icon: Icon(
                                      //  controller.isfavorit[ productModel.productid]=="1"
                                      active
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      color: Appcolor.lightmoov3,
                                    )), //******************************** */
                              )
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
              ),
            );
            //////////////////////////////////////////
          },
        ),
      ),
    );
  }
}
