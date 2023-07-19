import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:get/get.dart';

class initalBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
