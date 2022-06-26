import 'package:chaf_engine/data/entitiy/chat.dart';

class ChatListResponse {
  int? statusCode;
  String? message;
  List<Chat>? data;

  ChatListResponse({this.statusCode, this.message, this.data});

  ChatListResponse.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Chat>[];
      json['data'].forEach((v) {
        data!.add(Chat.fromJson(v));
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