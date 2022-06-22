import 'package:chaf_engine/data/entitiy/room_member.dart';

class RoomMemberResponse {
  int? statusCode;
  String? message;
  List<RoomMember>? data;

  RoomMemberResponse({this.statusCode, this.message, this.data});

  RoomMemberResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    if (json['data'] != null) {
      data = <RoomMember>[];
      json['data'].forEach((v) {
        data!.add(RoomMember.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}