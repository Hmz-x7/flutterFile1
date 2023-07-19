// ignore_for_file: implementation_imports, slash_for_doc_comments, unnecessary_import, unused_import, camel_case_types

import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
/********************عشان يكون داينمك**************** */

class customappbar extends StatelessWidget {
  final String titleappbar;

  final void Function()? onPressedicon;
  final void Function()? onPressedsearch;
  final TextEditingController mycontroller;
  final Function(String)? onChanged;
  const customappbar(
      {super.key,
      this.onPressedicon,
      this.onChanged,
      this.onPressedsearch,
      required this.titleappbar,
      required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      //color: Colors.black26,
      margin: const EdgeInsets.only(top: 7),
      child: Row(
        children: [
          /********************************** */
          // const SizedBox(width: 2),
          // Container(
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(15),
          //     color: Appcolor.lightmoov2,
          //   ),
          //   margin: const EdgeInsets.only(top: 2, bottom: 2),
          //   // child: IconButton(
          //   //   //  onPressed: onPressedmenu,
          //   //     icon: const Icon(
          //   //       Icons.menu,
          //   //       size: 25,
          //   //       color: Appcolor.lightmoov3,
          //       )),
          // ),

          /************************2******************* */

          /****************1child*************************** */
          Expanded(
            child: TextFormField(
              onChanged: onChanged,
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Appcolor.lightmoov3,
                    ),
                    onPressed: onPressedsearch),
                /***************** */
                hintText: titleappbar,
                hintStyle:
                    const TextStyle(fontSize: 18, color: Appcolor.lightmoov2),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Appcolor.lightmoov2,
              ),
            ),
          ),
          /********************************************** */
          const SizedBox(width: 2),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Appcolor.lightmoov2,
            ),
            margin: const EdgeInsets.only(top: 2, bottom: 2),
            child: IconButton(
                onPressed: onPressedicon,
                icon: const Icon(
                  Icons.notifications_active_outlined,
                  size: 25,
                  color: Appcolor.lightmoov3,
                )),
          ),
          /******************************** */
          /******************************************** */
        ],
      ),
    );
  }
}
