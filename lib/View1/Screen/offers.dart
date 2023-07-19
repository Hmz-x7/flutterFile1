import 'package:angeldelivery/Conteroller1/Homecontroller/offerscontroller.dart';
import 'package:angeldelivery/View1/Widged1/offers/customoffersitem.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    OffersController controller = Get.put(OffersController());
    return GetBuilder<OffersController>(
      builder: (controller) => Scaffold(
        appBar: AppBar(
          title: const Text(" The Offers  "),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => customListOffers(active: true),
        ),
      ),
    );
  }
}
