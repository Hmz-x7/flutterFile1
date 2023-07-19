// ignore_for_file: avoid_unnecessary_containers

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Address")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(AppRoute.AddressAdd);
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        child: ListView(children: const [Text("mmmm")]),
      ),
    );
  }
}
