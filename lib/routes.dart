// ignore_for_file: duplicate_import, unused_import, duplicate_ignore

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/View1/Screen/AppBar/favorite.dart';
import 'package:angeldelivery/View1/Screen/AppBar/setting.dart';
import 'package:angeldelivery/View1/Screen/Cart.dart';
import 'package:angeldelivery/View1/Screen/Ceckout.dart';
import 'package:angeldelivery/View1/Screen/Language.dart';
import 'package:angeldelivery/View1/Screen/OnBorading.dart';
import 'package:angeldelivery/View1/Screen/Proudect.dart';
import 'package:angeldelivery/View1/Screen/account/verfiycode_signup.dart';
import 'package:angeldelivery/View1/Screen/order/artichveorder.dart';
import 'package:angeldelivery/View1/Screen/order/detilesorder.dart';
import 'package:angeldelivery/View1/Screen/order/pending(bill).dart';
import 'package:angeldelivery/View1/address/view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'Core1/Middleware/mymiddleware.dart';
import 'View1/Screen/Home.dart';
import 'View1/Screen/HomeScreen.dart';
import 'View1/Screen/ProudectDeatiles.dart';
import 'View1/Screen/account/Login.dart';
import 'View1/Screen/account/SuessSignup.dart';
import 'View1/Screen/account/forgetpassword/ForgetPassword.dart';
import 'View1/Screen/account/forgetpassword/ResetPassword.dart';
import 'View1/Screen/account/forgetpassword/sucessReset.dart';
import 'View1/Screen/account/forgetpassword/verfiycode.dart';
import 'View1/Screen/account/signup.dart';
import 'View1/Screen/index.dart';
import 'View1/Screen/offers.dart';
import 'View1/address/add.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const Language(), middlewares: [
    myMiddleware(),
  ]),

  GetPage(name: AppRoute.login, page: () => const Login()),
   GetPage(name: AppRoute.IndexHome, page: () => const IndexHome()),
  GetPage(name: AppRoute.signup, page: () => const signup()),
  GetPage(name: AppRoute.forgetpassword, page: () => const forgetpassword()),
  GetPage(name: AppRoute.verfiycode, page: () => const verfiycode()),

  GetPage(name: AppRoute.resetpassword, page: () => const resetpassword()),
  GetPage(
      name: AppRoute.sucessrestpasword, page: () => const sucessrestpasword()),
  GetPage(name: AppRoute.suesssignup, page: () => const suesssignup()),

  GetPage(name: AppRoute.Language, page: () => const Language()),
  GetPage(
      name: AppRoute.verfiycode_signup, page: () => const verfiycode_signup()),
//OnBoarding
  GetPage(name: AppRoute.OnBoarding, page: () => const OnBoarding()),
//proudect
  // GetPage(name: AppRoute.proudect, page: () => const proudect(productModel: ,)),
//homepage
  GetPage(name: AppRoute.homepage, page: () => homepage()),
//ProucetDeatiles
  GetPage(name: AppRoute.ProucetDeatiles, page: () => const ProucetDeatiles()),
  //Setting
  GetPage(name: AppRoute.Setting, page: () => const Setting()),
  //Address
  GetPage(name: AppRoute.AddressView, page: () => const AddressView()),

  GetPage(name: AppRoute.AddressAdd, page: () => const AddressAdd()),

  //Cart
  GetPage(name: AppRoute.Cart, page: () => Cart()),
  //Checkout

  GetPage(name: AppRoute.Checkout, page: () => const Checkout()),
  GetPage(name: AppRoute.PendingOrder, page: () => const PendingOrder()),
  //DetilesOrder
  GetPage(name: AppRoute.DetilesOrder, page: () => const DetilesOrder()),
  //ArtchiveOrder
  GetPage(name: AppRoute.ArtchiveOrder, page: () => const ArtchiveOrder()),
  GetPage(name: AppRoute.homescreen, page: () => const homescreen()),
  GetPage(name: AppRoute.OffersView, page: () => const OffersView()),
  GetPage(name: AppRoute.Favorite, page: () => const Favorite()),
];
