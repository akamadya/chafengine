class RoomDetail {
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

  RoomDetail({this.roomId, this.roomCode, this.roomName, this.roomDesc, this.roomType, this.roomPhoto, this.roomLastChatId, this.roomLastChatText, this.roomLastChatUserFullname, this.createdBy, this.updatedBy, this.createdAt, this.updatedAt});

  RoomDetail.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = <String, dynamic>{};
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