// ignore: file_names
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/View1/Widged1/checkout/cardChooseaddress.dart';
import 'package:angeldelivery/View1/Widged1/checkout/cardPymentMethod.dart';
import 'package:flutter/material.dart';
// ignore: unused_import

import 'package:get/get.dart';

import '../../Conteroller1/checkout_controller.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    CheckoutController controller = Get.put(CheckoutController());
    return Scaffold(
        appBar: AppBar(title: const Text("Check out")),
        bottomNavigationBar: Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Appcolor.lightmoov3,
              borderRadius: BorderRadius.circular(20),
            ),
            child: MaterialButton(
              //color: Appcolor.lightmoov3,
              textColor: Appcolor.Wight,
              onPressed: () {
                Get.toNamed(AppRoute.PendingOrder);
              },
              child: const Text(
                "Cheak out",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )),
        // ignore: avoid_unnecessary_containers
        //////////////////////////////////////////////////////////////////////////
        body: GetBuilder<CheckoutController>(
          builder: (controller) =>

              //////////////////////////////////////////////////////////////////////////////////
              Container(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const Text(
                  "Choose Payment Method :",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Appcolor.boldmoov,
                      fontSize: 16),
                ),

                ////////////////////////////////////////////////////////////////////////////////
                InkWell(
                  onTap: () {
                    controller.choosePaymentMethod("Cash");
                  },
                  child: CartPymantMethod(
                    titel: 'Cash',
                    isactive: controller.paymentMethod == "Cash" ? true : false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.choosePaymentMethod("Pyment Cash");
                  },
                  child: CartPymantMethod(
                    titel: 'Pyment Cash',
                    isactive: controller.paymentMethod == "Pyment Cash"
                        ? true
                        : false,
                  ),
                ),

                /////////////////////////////////////////////////////////////////////////////////////////////////////
                const Divider(color: Appcolor.lightgry),
                const SizedBox(height: 20),
                //___________________________________//
                const Text(
                  "Choose Your Adress :",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Appcolor.boldmoov,
                      fontSize: 16),
                ),
                const SizedBox(height: 10),
                ///////////////////////////////////////////////////////////////////
                InkWell(
                  onTap: () {
                    controller.chooseCardChooesAdress("HOMe1");
                  },
                  child: CardChooesAdress(
                    titleadress: 'Home1',
                    titleCity: 'Taiz..',
                    isactive: controller.addressid == "HOMe1" ? true : false,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.chooseCardChooesAdress("Home2");
                  },
                  child: CardChooesAdress(
                    titleadress: 'Home2',
                    titleCity: 'Taiz22 22..',
                    isactive: controller.addressid == "Home2" ? true : false,
                  ),
                ),
                ////////////////////////////////////////////////////////////////////////////////////////////////
                const SizedBox(height: 20),
                const Divider(color: Appcolor.lightgry),
              ],
            ),
          ),
        ));
  }
}
