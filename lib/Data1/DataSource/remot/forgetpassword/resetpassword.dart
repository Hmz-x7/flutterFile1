// ignore_for_file: unnecessary_string_interpolations

import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:angeldelivery/linkapi.dart';

class RestetPasswordData {
  Crud crud;
  RestetPasswordData(this.crud);
  postdata(String email, String password) async {
    var response = await crud.postData(AppLink.resetpassword, {
      "email": email,
      "phone": password,
    });
    return response.fold((l) => l, (r) => r);
  }
}
