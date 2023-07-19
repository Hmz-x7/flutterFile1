// ignore_for_file: unused_import, prefer_const_constructors_in_immutables, avoid_print

import 'package:angeldelivery/Conteroller1/Homecontroller/homecontroller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/View1/Widged1/home/customappbar.dart';
import 'package:angeldelivery/View1/Widged1/home/customcardhome.dart';
import 'package:angeldelivery/View1/Widged1/home/listCategoriesHome.dart';
import 'package:angeldelivery/View1/Widged1/home/listNameAppCatagries.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../Core1/Class1/crud.dart';

//تعديل النجوم وكبمة الاقسام....
// ignore: camel_case_types
class homepage extends StatelessWidget {
  homepage({
    super.key,
  });

  get isactive => null;

  // localecontroller controller = Get.put(localecontroller());

  @override
  Widget build(BuildContext context) {
    Get.put(Homecontrollerim());
   // Get.put(Crud());
    return
        /******************************ادخله للgetbuilder******** */
        GetBuilder<Homecontrollerim>(
      builder: (controller) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
            /*******************استدعاء ال Appbar********************** */
            children: [
              //=======================part1=============================
              customappbar(
                titleappbar: "البحث داخل المطعم",
                onPressedicon: () {},
                onPressedsearch: () {
                  controller.onssearchprou();
                },
                //onPressedmenu: () {},
                mycontroller: controller.search!,
                onChanged: (val) {
                  print(val.toString());
                  controller.checksearch(val);
                },
              ),
              const SizedBox(height: 5),

//////////////////////////////////////////////////////////////////////////////////////////////
              !controller.issearch
                  ? Column(
                      children: [
                        /************************part2******************************* */
                        const customcardhome(
                            tiltle: "الخصومات", body: "العروض المتاحه"),
                        const SizedBox(height: 5),

                        /*******************************======الاقسام*=====****************************************** */
                        // const customtitlehome(titlehome: ":الاقـسـام"),**************///********** */
                        listcategorieshome(
                          imagecategories: Image.asset("/image/ha.jpg"),
                          //   titlenameapp: "اسم المتجر"
                        ),
                        /******************************************************** */
                        //   const customtitlehome(titlehome: "المتاجر المتاحه"),/***********? */
                        const SizedBox(height: 7),
                        /*********************=====Available_stores======***************** */
                        listnameappcategories(
                          nameapp: "اسم المتجر",
                          minmamdelivery: "ادني حد للتوصيل",
                        ),

                        /********************************************************************** */
                        const SizedBox(height: 30),
                        Container(
                          decoration: BoxDecoration(
                            color: isactive == true
                                ? Appcolor.lightmoov3
                                : Appcolor.lightmoov2,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          // ignore: prefer_const_constructors
                          padding: EdgeInsets.only(left: 120, right: 100),
                          child: MaterialButton(
                            onPressed: () {
                              Get.toNamed(AppRoute.OffersView);
                            },
                            // ignore: sort_child_properties_last
                            child: const Text(
                              " The Offers ",
                            ),
                            //  color: Appcolor.lightmoov3,
                            textColor: Appcolor.lightmoov3,
                          ),
                        ),

                        // evaluation: Icon(Icons.star),
                      ],
                    )
                  : Container(
                      child: Text("search12"),
                    )
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            ]),
      ),
    );
    /****************************************** */
  }
}
// class listproudsearch extends StatelessWidget {
//    final list<proudectmodel>
//   const listproudsearch({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
