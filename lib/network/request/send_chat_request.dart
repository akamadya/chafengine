// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SendChatRequest {
  String room_code;
  int? reply_chat_id;
  String text;
  String? mediaPath;
  String? typeMedia;

  SendChatRequest({
    required this.room_code,
    this.reply_chat_id,
    required this.text,
    this.mediaPath,
    this.typeMedia,
  });

  SendChatRequest copyWith({
    String? room_code,
    int? reply_chat_id = 0,
    String? text,
    String? mediaPath = "",
    String? typeMedia = "",
  }) {
    return SendChatRequest(
      room_code: room_code ?? this.room_code,
      reply_chat_id: reply_chat_id ?? this.reply_chat_id,
      text: text ?? this.text,
      mediaPath: mediaPath ?? this.mediaPath,
      typeMedia: typeMedia ?? this.typeMedia,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'room_code': room_code,
      'reply_chat_id': reply_chat_id,
      'text': text,
      'mediaPath': mediaPath,
      'typeMedia': typeMedia,
    };
  }

  factory SendChatRequest.fromMap(Map<String, dynamic> map) {
    return SendChatRequest(
      room_code: map['room_code'] as String,
      reply_chat_id: map['reply_chat_id'] != null ? map['reply_chat_id'] as int : null,
      text: map['text'] as String,
      mediaPath: map['mediaPath'] != null ? map['mediaPath'] as String : null,
      typeMedia: map['typeMedia'] != null ? map['typeMedia'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SendChatRequest.fromJson(String source) => SendChatRequest.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SendChatRequest(room_code: $room_code, reply_chat_id: $reply_chat_id, text: $text, mediaPath: $mediaPath, typeMedia: $typeMedia)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SendChatRequest &&
      other.room_code == room_code &&
      other.reply_chat_id == reply_chat_id &&
      other.text == text &&
      other.mediaPath == mediaPath &&
      other.typeMedia == typeMedia;
  }

  @override
  int get hashCode {
    return room_code.hashCode ^
      reply_chat_id.hashCode ^
      text.hashCode ^
      mediaPath.hashCode ^
      typeMedia.hashCode;
  }
}
