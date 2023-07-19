// ignore_for_file: avoid_print, unused_import, depend_on_referenced_packages

import 'dart:convert';

import 'package:angeldelivery/Core1/Class1/StatuesRequest.dart';
import 'package:angeldelivery/Core1/Functions/checkinternet.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class Crud {
  Future<Either<StatusRequest, Map>> postData(
      String linkurl, Map<String, dynamic> data) async {
    try {
      if (await checkInternet()) {
        var response = await http.post(Uri.parse(linkurl), body: data);
        if (response.statusCode == 200 || response.statusCode == 201) {
          Map responsebody =  jsonDecode(response.body);
          print(responsebody);

          return Right(responsebody);
        } else {
          print(StatusRequest.serverfailure.toString());
          return const Left(StatusRequest.serverfailure);
        }
        } else {
         print(StatusRequest.offLinefailure.toString());

        return const Left(StatusRequest.offLinefailure);
      }
    } catch (_) {
      print(StatusRequest.serverExcption.toString());

      return const Left(StatusRequest.serverExcption);
    }
  }
}
