// ignore_for_file: file_names

import 'package:angeldelivery/View1/Widged1/Cart/Appbarcart.dart';
import 'package:angeldelivery/View1/Widged1/Cart/CustomButtomNavgationbarCart.dart';
import 'package:angeldelivery/View1/Widged1/Cart/CustomCartLIst.dart';
import 'package:angeldelivery/View1/Widged1/Cart/topcartforitem.dart';
import 'package:flutter/material.dart';
// ignore: unused_import

// ignore: camel_case_types, use_key_in_widget_constructors
class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Container(
            margin: const EdgeInsets.only(bottom: 5),
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Topappbar(
                  title: 'My Cart',
                ),
                TopcartForItemsnum(title_masseg: 'You Hava 3 Items'),
              ],
            ),
          ),
          backgroundColor: Colors.white),
      /*_______________________________________________________________________________*/
      bottomNavigationBar: const CustomButtonNaviBarCart(
          totel_price: '140\$', price: '100', Discount: '20%'),

      /*________________________________________________________________________________________*/
      body: ListView(
        children: const [
          /*_____________________appbar_________________________________________*/

          /*______________________________3item_________________________________________________*/

          /*____________________________________________________________________________________*/
          CustomCartList(
            itemPrice: '350.0\$',
            itemCount: '3',
            itemName: 'Puhhu',
          ),
          CustomCartList(
            itemPrice: '200',
            itemCount: '3',
            itemName: 'kkkhj',
          ),
        ],
      ),
    );
  }
}
