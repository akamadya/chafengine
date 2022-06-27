import 'dart:convert';

import 'package:chaf_engine/network/model/error.dart';
import 'package:chaf_engine/network/request/common_request.dart';
import 'package:chaf_engine/network/request/send_chat_request.dart';
import 'package:chaf_engine/network/response/chat_list_response.dart';
import 'package:chaf_engine/network/response/common_response.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import '../settings.dart';
import 'package:http/http.dart' as http;
import 'model/header.dart';

class ChatProvider{
  Future<Either<ChatListResponse, Error>> chatList(CommonRequest request) async{
    Either<ChatListResponse, Error> res;
    String url = "${Settings.url}/chat/list?room_code=${request.code}";

    var response = await http.get(Uri.parse(url),
                   headers: Header().headers());
    try{
      debugPrint("api = $url ,response = ${response.body}");

      var jo = json.decode(response.body);
      if(response.statusCode == 200){
        res = Left(ChatListResponse.fromJson(jo));
      } else {
        res = Right(Error.fromJson(jo));
      }

    } catch(e){
      var error = Error();      
      res = Right(error.callback());
      throw Exception("Gagal Chat list dude = $e");
    }
    return res;               
  }

  Future<Either<CommonResponse, Error>> sendChat(SendChatRequest request) async{

    var body = <String, String>{};
    body["room_code"] = request.room_code;
    body["reply_chat_id"] = request.reply_chat_id.toString();
    body["text"] = request.text;
    body["media"] = request.media.toString();

    Either<CommonResponse, Error> res;
    String url = "${Settings.url}/chat/send";

    // var response = await http.post(Uri.parse(url), 
    //             body: request.toJson(),
    //             headers: Header().headers());

    var req = http.MultipartRequest('POST', Uri.parse(url));
    req.fields.addAll(body);
    req.headers.addAll(Header().headers());
    var response = await req.send();
    var printResponse = await response.stream.bytesToString();

    try{
      debugPrint("api = $url ,response = $printResponse");

      var jo = json.decode(printResponse);
      if(response.statusCode == 200){
        res = Left(CommonResponse.fromJson(jo));
      } else {
        res = Right(Error.fromJson(jo));
      }

    } catch(e){
      var error = Error();      
      res = Right(error.callback());
      throw Exception("Gagal send message dude = $e");
    }
    return res;               
  }
}