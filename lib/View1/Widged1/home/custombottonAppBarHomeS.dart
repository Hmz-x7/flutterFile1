import 'package:angeldelivery/Conteroller1/Homecontroller/HomeScreencontroller.dart';
import 'package:angeldelivery/View1/Widged1/home/custombouttonAppBarS.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class cstombottonappbarHome1 extends StatelessWidget {
  const cstombottonappbarHome1({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<homescreencontrollerim>(
        builder: (controller) => BottomAppBar(
              shape: const CircularNotchedRectangle(),
              notchMargin: 40,
              child: Row(
                children: [
                  ...List.generate(controller.listpage.length + 1, ((index) {
                    ///listpage.length +1
                    int i = index > 2 ? index - 1 : index;
                    return index == 2
                        ? const Spacer()
                        : custombuttonappbar(
                            textbutton: controller.titlebottombar[i],
                            iconData: Icons.home,
                            onPressed: () {
                              controller.changepage(i);
                            },
                            active: controller.currentpage == i ? true : false,
                          );
                  }))
                ],
              ),
            ));
  }
}
