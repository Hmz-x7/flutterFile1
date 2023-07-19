import 'package:angeldelivery/Core1/Constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: Appcolor.primaryColor),
  appBarTheme: AppBarTheme( 
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: Appcolor.primaryColor),
    titleTextStyle:const  TextStyle(
        color: Appcolor.primaryColor,
        fontWeight: FontWeight.bold,
        fontFamily: "PlayfairDisplay",
        fontSize: 25),
    backgroundColor: Colors.grey[50],
  ),
  textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: Appcolor.black),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: Appcolor.black),
      bodyLarge: TextStyle(
          height: 2,
          color: Appcolor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(height: 2, color: Appcolor.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 22, color: Appcolor.black),
      headlineMedium: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 26, color: Appcolor.black),
      bodyLarge: TextStyle(
          height: 2,
          color: Appcolor.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14),
      bodyMedium: TextStyle(height: 2, color: Appcolor.grey, fontSize: 14)),
  primarySwatch: Colors.blue,
);
