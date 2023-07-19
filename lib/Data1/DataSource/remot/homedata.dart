import 'package:angeldelivery/Core1/Class1/crud.dart';
import 'package:angeldelivery/linkapi.dart';

class HomeData {
  Crud crud;
  HomeData(this.crud);

  getData() async {
    var response = await crud.postData(AppLink.homepage, {});
    return response.fold((l) => l, (r) => r);
  }

  searchdata(String search) async {
    var response = await crud.postData(AppLink.search, {"search": search});
    return response.fold((l) => l, (r) => r);
  }
}
