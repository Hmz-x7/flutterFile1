// ignore_for_file: unnecessary_this, prefer_collection_literals

class CategoristModel {
  String? categoriersId;
  String? categoriersName;
  String? categoriersNameAr;
  String? categoriersImage;
  String? categoriersDatatime;
  String? categoriersServes;
  String? categoriersType;
  String? categoriersLowestLimit;
  String? servesId;
  String? servesName;
  String? servesNameAr;
  String? servesImage;

  CategoristModel(
      {this.categoriersId,
      this.categoriersName,
      this.categoriersNameAr,
      this.categoriersImage,
      this.categoriersDatatime,
      this.categoriersServes,
      this.categoriersType,
      this.categoriersLowestLimit,
      this.servesId,
      this.servesName,
      this.servesNameAr,
      this.servesImage});

  CategoristModel.fromJson(Map<String, dynamic> json) {
    categoriersId = json['categoriers_id'];
    categoriersName = json['categoriers_name'];
    categoriersNameAr = json['categoriers_name_ar'];
    categoriersImage = json['categoriers_image'];
    categoriersDatatime = json['categoriers_datatime'];
    categoriersServes = json['categoriers_serves'];
    categoriersType = json['categoriers_type'];
    categoriersLowestLimit = json['categoriers_Lowest limit'];
    servesId = json['serves_id'];
    servesName = json['serves_name'];
    servesNameAr = json['serves_name_ar'];
    servesImage = json['serves_image'];
  }

  Map<String, dynamic> toJson() {
    // ignore: unnecessary_new
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoriers_id'] = this.categoriersId;
    data['categoriers_name'] = this.categoriersName;
    data['categoriers_name_ar'] = this.categoriersNameAr;
    data['categoriers_image'] = this.categoriersImage;
    data['categoriers_datatime'] = this.categoriersDatatime;
    data['categoriers_serves'] = this.categoriersServes;
    data['categoriers_type'] = this.categoriersType;
    data['categoriers_Lowest limit'] = this.categoriersLowestLimit;
    data['serves_id'] = this.servesId;
    data['serves_name'] = this.servesName;
    data['serves_name_ar'] = this.servesNameAr;
    data['serves_image'] = this.servesImage;
    return data;
  }
}
