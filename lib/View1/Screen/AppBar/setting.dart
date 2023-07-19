// ignore_for_file: implementation_imports, unused_import, unnecessary_import

import 'package:angeldelivery/Conteroller1/settings_controller.dart';
import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../Conteroller1/Homecontroller/Homescreencontroller.dart';

class Setting extends GetView<homescreencontroller> {
  const Setting({super.key});

  get isactive => null;

  @override
  Widget build(BuildContext context) {
    Settings_Controller controller = Get.put(Settings_Controller());
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            // alignment: Alignment.center,
            children: [
              Container(
                height: Get.width / 2,
                decoration: const BoxDecoration(
                    color: Appcolor.lightmoov3,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30))),
              ),
              Positioned(
                  top: 140,
                  left: 130,
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Appcolor.Wight,
                        borderRadius: BorderRadius.circular(100)),
                    child: const CircleAvatar(
                      backgroundColor: Appcolor.Wight,
                      backgroundImage: AssetImage("images/avatar_m.PNG"),
                      radius: 40,
                    ),
                  )),
            ],
          ),
          const SizedBox(height: 70),
          Container(
            color: Appcolor.lightmoov2,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(

                      // onTap: () {},
                      title: const Text("Disable Notifiction "),
                      trailing: Switch(value: true, onChanged: (val) {})),
                  ListTile(
                    iconColor: Appcolor.lightmoov3,
                    onTap: () {
                      Get.toNamed("PendingOrder");
                    },
                    title: const Text("Orders "),
                    trailing: const Icon(Icons.card_travel_outlined),
                  ),
                  ListTile(
                    iconColor: Appcolor.lightmoov3,
                    onTap: () {
                      Get.toNamed("ArtchiveOrder");
                    },
                    title: const Text("Archive Orders "),
                    trailing: const Icon(Icons.card_giftcard_rounded),
                  ),
                  ListTile(
                    iconColor: Appcolor.lightmoov3,
                    onTap: () {
                      Get.toNamed("AddressView");
                    },
                    title: const Text("Adress "),
                    trailing: const Icon(Icons.location_on_outlined),
                  ),
                  ListTile(
                    iconColor: Appcolor.lightmoov3,
                    onTap: () {},
                    title: const Text("About us"),
                    trailing: const Icon(Icons.help_center_rounded),
                  ),
                  ListTile(
                    iconColor: Appcolor.lightmoov3,
                    onTap: () async {
                      await launchUrl(Uri.parse("tel:+967735569282"));
                    },
                    title: const Text(" Contact us"),
                    trailing: const Icon(Icons.phone_callback),
                  ),
                  ListTile(
                    iconColor: Appcolor.lightmoov3,
                    onTap: () {
                      controller.logout();
                    },
                    title: const Text("Logout "),
                    hoverColor: Appcolor.lightmoovtomatch,
                    trailing: const Icon(Icons.exit_to_app_outlined),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.only(left: 120, right: 100),
            //   margin: EdgeInsets.all(20),
            child: MaterialButton(
              onPressed: () {
                Get.toNamed(AppRoute.homescreen);
              },
              // ignore: sort_child_properties_last
              child: const Text(
                " Back to Home ",
              ),
              color:
                  isactive == false ? Appcolor.lightmoov3 : Appcolor.lightmoov2,
              textColor: Appcolor.Wight,
            ),
          ),
        ],
      ),
    );
  }
}
