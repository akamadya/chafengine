class Chat {
  int? chatId;
  int? chatRoomId;
  int? chatUserId;
  String? chatUserFullname;
  String? chatUserPhoto;
  String? chatText;
  String? chatType;
  int? isReply;
  int? chatReplyChatId;
  String? createdAt;
  String? updatedAt;
  bool? isNip;
  String? timeDay;

  Chat(
      {this.chatId,
      this.chatRoomId,
      this.chatUserId,
      this.chatUserFullname,
      this.chatUserPhoto,
      this.chatText,
      this.chatType,
      this.isReply,
      this.chatReplyChatId,
      this.createdAt,
      this.updatedAt,
      this.isNip,
      this.timeDay});

  Chat.fromJson(Map<String, dynamic> json) {
    chatId = json['chat_id'];
    chatRoomId = json['chat_room_id'];
    chatUserId = json['chat_user_id'];
    chatUserFullname = json['chat_user_fullname'];
    chatUserPhoto = json['chat_user_photo'];
    chatText = json['chat_text'];
    chatType = json['chat_type'];
    isReply = json['is_reply'];
    chatReplyChatId = json['chat_reply_chat_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isNip = json['is_nip'];
    timeDay = json['time_day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['chat_id'] = chatId;
    data['chat_room_id'] = chatRoomId;
    data['chat_user_id'] = chatUserId;
    data['chat_user_fullname'] = chatUserFullname;
    data['chat_user_photo'] = chatUserPhoto;
    data['chat_text'] = chatText;
    data['chat_type'] = chatType;
    data['is_reply'] = isReply;
    data['chat_reply_chat_id'] = chatReplyChatId;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['is_nip'] = isNip;
    data['time_day'] = timeDay;
    return data;
  }
}