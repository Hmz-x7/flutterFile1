// ignore_for_file: body_might_complete_normally_nullable, camel_case_types, implementation_imports

import 'package:angeldelivery/Core1/Constant/routes.dart';
import 'package:angeldelivery/Core1/Service/service.dart';
import 'package:flutter/src/widgets/navigator.dart';
import 'package:get/get.dart';

class myMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  Myservices myservices = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (myservices.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoute.IndexHome);
    }
    if (myservices.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoute.login);
    }
  }
}
