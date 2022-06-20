
class RoomDetail {
  int? statusCode;
  String? message;
  Data? data;

  RoomDetail({this.statusCode, this.message, this.data});

  RoomDetail.fromJson(Map<String, dynamic> json) {
    statusCode = json["statusCode"];
    message = json["message"];
    data = json["data"] == null ? null : Data.fromJson(json["data"]);
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

class Data {
  int? roomId;
  String? roomCode;
  String? roomName;
  String? roomDesc;
  String? roomType;
  String? roomPhoto;
  int? roomLastChatId;
  String? roomLastChatText;
  String? roomLastChatUserFullname;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;

  Data({this.roomId, this.roomCode, this.roomName, this.roomDesc, this.roomType, this.roomPhoto, this.roomLastChatId, this.roomLastChatText, this.roomLastChatUserFullname, this.createdBy, this.updatedBy, this.createdAt, this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    roomId = json["room_id"];
    roomCode = json["room_code"];
    roomName = json["room_name"];
    roomDesc = json["room_desc"];
    roomType = json["room_type"];
    roomPhoto = json["room_photo"];
    roomLastChatId = json["room_last_chat_id"];
    roomLastChatText = json["room_last_chat_text"];
    roomLastChatUserFullname = json["room_last_chat_user_fullname"];
    createdBy = json["created_by"];
    updatedBy = json["updated_by"];
    createdAt = json["created_at"];
    updatedAt = json["updated_at"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["room_id"] = roomId;
    data["room_code"] = roomCode;
    data["room_name"] = roomName;
    data["room_desc"] = roomDesc;
    data["room_type"] = roomType;
    data["room_photo"] = roomPhoto;
    data["room_last_chat_id"] = roomLastChatId;
    data["room_last_chat_text"] = roomLastChatText;
    data["room_last_chat_user_fullname"] = roomLastChatUserFullname;
    data["created_by"] = createdBy;
    data["updated_by"] = updatedBy;
    data["created_at"] = createdAt;
    data["updated_at"] = updatedAt;
    return data;
  }
}