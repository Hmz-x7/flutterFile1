import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:angeldelivery/linkapi.dart';

class CartData {
  Crud crud;
  CartData(this.crud);

  addcart(String userid, String productid) async {
    var response = await crud
        .postData(AppLink.cartadd, {"userid": userid, "productid": productid});
    return response.fold((l) => l, (r) => r);
  }

  removecart(String userid, String productid) async {
    var response = await crud.postData(
        AppLink.cartremove, {"userid": userid, "productid": productid});
    return response.fold((l) => l, (r) => r);
  }
}
