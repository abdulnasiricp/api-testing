
class CityList {
  int? success;
  String? message;
  Data? data;

  CityList({this.success, this.message, this.data});

  CityList.fromJson(Map<String, dynamic> json) {
    if(json["success"] is int) {
      success = json["success"];
    }
    if(json["message"] is String) {
      message = json["message"];
    }
    if(json["data"] is Map) {
      data = json["data"] == null ? null : Data.fromJson(json["data"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["success"] = success;
    _data["message"] = message;
    if(data != null) {
      _data["data"] = data?.toJson();
    }
    return _data;
  }
}

class Data {
  List<Cities>? cities;

  Data({this.cities});

  Data.fromJson(Map<String, dynamic> json) {
    if(json["cities"] is List) {
      cities = json["cities"] == null ? null : (json["cities"] as List).map((e) => Cities.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(cities != null) {
      _data["cities"] = cities?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Cities {
  int? id;
  int? provinceId;
  String? cName;
  String? cImage;
  String? cDescription;
  String? lat;
  String? long;
  int? status;
  String? createdAt;
  String? updatedAt;

  Cities({this.id, this.provinceId, this.cName, this.cImage, this.cDescription, this.lat, this.long, this.status, this.createdAt, this.updatedAt});

  Cities.fromJson(Map<String, dynamic> json) {
    if(json["id"] is int) {
      id = json["id"];
    }
    if(json["province_id"] is int) {
      provinceId = json["province_id"];
    }
    if(json["c_name"] is String) {
      cName = json["c_name"];
    }
    if(json["c_image"] is String) {
      cImage = json["c_image"];
    }
    if(json["c_description"] is String) {
      cDescription = json["c_description"];
    }
    if(json["lat"] is String) {
      lat = json["lat"];
    }
    if(json["long"] is String) {
      long = json["long"];
    }
    if(json["status"] is int) {
      status = json["status"];
    }
    if(json["created_at"] is String) {
      createdAt = json["created_at"];
    }
    if(json["updated_at"] is String) {
      updatedAt = json["updated_at"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["province_id"] = provinceId;
    _data["c_name"] = cName;
    _data["c_image"] = cImage;
    _data["c_description"] = cDescription;
    _data["lat"] = lat;
    _data["long"] = long;
    _data["status"] = status;
    _data["created_at"] = createdAt;
    _data["updated_at"] = updatedAt;
    return _data;
  }
}