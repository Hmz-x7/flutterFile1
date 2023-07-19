// ignore_for_file: dead_code, avoid_print

import 'package:angeldelivery/Core1/Class1/handlingdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Conteroller1/test_data_controller.dart';

class TestView extends StatelessWidget {
  const TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Testcontroller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test"),
      ),
      /************************************************************ */
      body: GetBuilder<Testcontroller>(builder: (controller) {
        return HandlingDataView(
            statusRequest: controller.statusRequest,
            widget: ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) {
                  return Text("${controller.data}");
                }));
        /***************************************************************** */
      }),
    );
  }
}
