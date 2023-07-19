// ignore_for_file: unnecessary_string_interpolations

import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:angeldelivery/linkapi.dart';

class VerifycodesignupData {
  Crud crud;
  VerifycodesignupData(this.crud);

  // ignore: non_constant_identifier_names
  postdata(String email, String verifycodee) async {
    var response = await crud.postData(AppLink.verifycode, {
      "email": email,
      "verifycode": verifycodee,
    });
    return response.fold((l) => l, (r) => r);
  }
  // resendData(String email) async {
  //   var response = await crud.postData(AppLink.resend, {"email": email});
  //   return response.fold((l) => l, (r) => r);
  // }
}
