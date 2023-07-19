// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, camel_case_types

import 'package:angeldelivery/Conteroller1/Homecontroller/homecontroller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class listcategorieshome extends GetView<Homecontrollerim> {
  final imagecategories;
  const listcategorieshome({
    super.key,
    this.imagecategories,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Appcolor.lightmoov2,
      ),
      height: 130,
      //color: Color.fromARGB(255, 182, 189, 182),
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
              titlenameapp: "add name",
            );
          },
          itemCount: 30),
    );
  }
}

class Categories extends GetView<Homecontrollerim> {
  final int? i;
  final String titlenameapp;

  const Categories({
    Key? key,
    required this.i,
    required this.titlenameapp,
  }) : super(key: key);
  getcateg() async {
    /* CollectionReference cat =
        FirebaseFirestore.instance.collection("categoryies");
    QuerySnapshot querySnapshot = await cat.get();
    List<QueryDocumentSnapshot> listdocs = querySnapshot.docs;
    // ignore: avoid_function_literals_in_foreach_calls
    listdocs.forEach((element) {
      // ignore: avoid_print
      print(element.data());
      // ignore: avoid_print
      print("+++++++++++++++++++++++++++++++++++++++++++++++");
    });*/

    /* DocumentReference doc = FirebaseFirestore.instance
        .collection("categoryies")
        .doc("pqUGUXskg7QBpYcyMEly");
    await doc.get().then((value) {
      print(value.data());
    });*/
  }

  void initstate() {
    getcateg();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await getcateg();

        controller.gettoproudect(controller.categories, i!, "______catid");
      },
      child: Column(
        children: [
          /////Container for images catapp////////////
          Container(
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                color: Appcolor.lightmoov3,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage(
                    "images/b.jpg",
                  ),
                  fit: BoxFit.cover,
                )),
            height: 100,
            width: 150,

            ///////////////////////////////////////////////////////
            // المفروض جلب من db
            //   child:
            //  imagecategories
            ////////////////////////////////////////////////////////
          ),
          Text(
            titlenameapp,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
