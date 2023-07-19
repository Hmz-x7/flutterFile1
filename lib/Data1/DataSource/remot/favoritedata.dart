import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:angeldelivery/linkapi.dart';

class FavoritData {
  Crud crud;
  FavoritData(this.crud);

  addfavorit(String userid, String productid) async {
    var response = await crud.postData(
        AppLink.favoriteadd, {"userid": userid, "productid": productid});
    return response.fold((l) => l, (r) => r);
  }

  removefavorit(String userid, String productid) async {
    var response = await crud.postData(
        AppLink.favoriteremove, {"userid": userid, "productid": productid});
    return response.fold((l) => l, (r) => r);
  }
}
