// ignore_for_file: file_names, unused_local_variable

import 'package:angeldelivery/Core1/Service/service.dart';
import 'package:get/get.dart';

translatDatabase(columnar, columnaren) {
  Myservices myservices = Get.find();
  if (myservices.sharedPreferences.getString("lang") == "ar") {
    return columnar;
  } else {
    return columnaren;
  }
}
