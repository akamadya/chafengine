class RoomMember {
  int? statusCode;
  String? message;
  List<Data>? data;

  RoomMember({this.statusCode, this.message, this.data});

  RoomMember.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
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

class Data {
  int? rmId;
  int? rmRoomId;
  int? rmUserId;
  String? rmUserFullname;
  String? rmUserPhoto;
  int? isAdmin;
  int? isLeft;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.rmId,
        this.rmRoomId,
        this.rmUserId,
        this.rmUserFullname,
        this.rmUserPhoto,
        this.isAdmin,
        this.isLeft,
        this.createdBy,
        this.updatedBy,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    rmId = json['rm_id'];
    rmRoomId = json['rm_room_id'];
    rmUserId = json['rm_user_id'];
    rmUserFullname = json['rm_user_fullname'];
    rmUserPhoto = json['rm_user_photo'];
    isAdmin = json['is_admin'];
    isLeft = json['is_left'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rm_id'] = rmId;
    data['rm_room_id'] = rmRoomId;
    data['rm_user_id'] = rmUserId;
    data['rm_user_fullname'] = rmUserFullname;
    data['rm_user_photo'] = rmUserPhoto;
    data['is_admin'] = isAdmin;
    data['is_left'] = isLeft;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}