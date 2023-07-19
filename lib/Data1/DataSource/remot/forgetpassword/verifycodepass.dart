// ignore_for_file: unnecessary_string_interpolations

import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:angeldelivery/linkapi.dart';

class VerifyCodePasswordData {
  Crud crud;
  VerifyCodePasswordData(this.crud);

  // ignore: non_constant_identifier_names
  postdata(String email, String verfiycode) async {
    var response = await crud.postData(AppLink.verifycodepass, {
      "email": email,
      "phone": verfiycode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
