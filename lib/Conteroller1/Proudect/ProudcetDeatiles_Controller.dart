import 'package:get/get.dart';

abstract class ProudectDeatilesController extends GetxController {}

class ProudectDeatilesControllerIm extends ProudectDeatilesController {
  // Items..>كلاس فيبه الصور من db
  // late Items item;
  late String item;

  initiadata() {
//    item = Get.arguments = ['items'];  ان المتغير يجلب البيانات من db
  }

  @override
  void onInit() {
    initiadata();
    super.onInit();
  }
}
