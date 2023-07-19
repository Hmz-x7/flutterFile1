import 'package:angeldelivery/Conteroller1/order/pedingController.dart';
import 'package:angeldelivery/View1/Widged1/peding_order/custompedinginfo.dart';
import 'package:flutter/material.dart';
// ignore: unused_import

import 'package:get/get.dart';

class PendingOrder extends StatelessWidget {
  const PendingOrder({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    PedingController controller = Get.put(PedingController());
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Orders",
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: const [
              SizedBox(height: 12),
              CustomPedingInfo(
                isactive: true,
              ),
            ],
          ),
        ));
  }
}
