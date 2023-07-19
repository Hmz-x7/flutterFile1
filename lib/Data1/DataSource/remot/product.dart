import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:angeldelivery/linkapi.dart';

class ProductData {
  Crud crud;
  ProductData(this.crud);

  getData(String id, String userid) async {
    var response = await crud
        .postData(AppLink.product, {"id": id.toString(), "userid": userid});
    return response.fold((l) => l, (r) => r);
  }
}
