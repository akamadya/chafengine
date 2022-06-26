import 'dart:convert';

class SendChatRequest {
  String room_code;
  int? reply_chat_id;
  String text;
  String? media;

  SendChatRequest({
    required this.room_code,
    required this.text,
    this.reply_chat_id = 0,
    this.media = "",
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'room_code': room_code,
      'reply_chat_id': reply_chat_id,
      'text': text,
      'media': media,
    };
  }

  factory SendChatRequest.fromMap(Map<String, dynamic> map) {
    return SendChatRequest(
      room_code: map['room_code'] as String,
      reply_chat_id: map['reply_chat_id'] != null ? map['reply_chat_id'] as int : null,
      text: map['text'] as String,
      media: map['media'] != null ? map['media'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SendChatRequest.fromJson(String source) => SendChatRequest.fromMap(json.decode(source) as Map<String, dynamic>);
}
