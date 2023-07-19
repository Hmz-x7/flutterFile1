// ignore_for_file: unnecessary_this, unnecessary_new

class Servesmode {
  String? servesId;
  String? servesName;
  String? servesNameAr;
  String? servesImage;

  Servesmode(
      {this.servesId, this.servesName, this.servesNameAr, this.servesImage});

  Servesmode.fromJson(Map<String, dynamic> json) {
    servesId = json['serves_id'];
    servesName = json['serves_name'];
    servesNameAr = json['serves_name_ar'];
    servesImage = json['serves_image'];
  }

  Map<String, dynamic> toJson() {
    // ignore: prefer_collection_literals
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['serves_id'] = this.servesId;
    data['serves_name'] = this.servesName;
    data['serves_name_ar'] = this.servesNameAr;
    data['serves_image'] = this.servesImage;
    return data;
  }
}
