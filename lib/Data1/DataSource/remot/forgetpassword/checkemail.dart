// ignore_for_file: unnecessary_string_interpolations

import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:angeldelivery/linkapi.dart';

class CheckEmailData {
  Crud crud;
  CheckEmailData(this.crud);

  // ignore: non_constant_identifier_names
  postdata(String email) async {
    var response = await crud.postData(AppLink.checemail, {
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
