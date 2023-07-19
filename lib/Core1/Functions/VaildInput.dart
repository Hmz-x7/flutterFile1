// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';

VaildInput(String val, int min, int max, String type) {
  /* if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "not vaild username";
    }
  }*/
  
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "Not Valid Email";
    }
  }
  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "not vaild phone";
    }
  }
  if (val.isEmpty) {
    return "..cant be empty";
  }

  if (val.length < min) {
    return "..less..$min";
  }
  if (val.length > max) {
    return "..larger..$max";
  }
}
