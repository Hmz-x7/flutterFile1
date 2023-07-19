// ignore_for_file: unnecessary_string_interpolations

import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:angeldelivery/linkapi.dart';

class SignupData {
  Crud crud;
  SignupData(this.crud);

  // ignore: non_constant_identifier_names
  postdata(String username, String password, String email, String phone) async {
    var response = await crud.postData(AppLink.signup, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    // print("-->>${{
    //   "username": username,
    //   "password": password,
    //   "email": email,
    //   "phone": phone,
    // }}<<--");
    return response.fold((l) => l, (r) => r);
  }
}
