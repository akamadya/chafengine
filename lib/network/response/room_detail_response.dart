import 'package:chaf_engine/data/entitiy/room_detail.dart';
class RoomDetailResponse {
  int? statusCode;
  String? message;
  RoomDetail? data;

  RoomDetailResponse({this.statusCode, this.message, this.data});

  RoomDetailResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json["statusCode"];
    message = json["message"];
    data = json["data"] == null ? null : RoomDetail.fromJson(json["data"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["statusCode"] = statusCode;
    data["message"] = message;
    if(this.data != null) {
      data["data"] = this.data?.toJson();
    }
    return data;
  }
}