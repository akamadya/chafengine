import 'dart:convert';

import 'package:chaf_engine/network/model/error_response.dart';
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

  // get data chat list
  Future<Either<ChatListResponse, ErrorResponse>> chatList(CommonRequest request) async{
    Either<ChatListResponse, ErrorResponse> res;
    String url = "${Settings.url}/chat/list?room_code=${request.code}";

    var response = await http.get(Uri.parse(url),
                   headers: Header().headers());
    try{
      debugPrint("api = $url ,response = ${response.body}");

      var jo = json.decode(response.body);
      if(response.statusCode == 200){
        res = Left(ChatListResponse.fromJson(jo));
      } else {
        res = Right(ErrorResponse.fromJson(jo));
      }

    } catch(e){
      var error = ErrorResponse();      
      res = Right(error.callback());
      throw Exception("Gagal Chat list dude = $e");
    }
    return res;               
  }

  // kirim pesan
  Future<Either<CommonResponse, ErrorResponse>> sendChat(SendChatRequest request) async{

    var body = <String, String>{};
    body["room_code"] = request.room_code;    
    body["text"] = request.text;
    //body["media"] = request.media.toString();

    if(request.reply_chat_id != 0){
      body["reply_chat_id"] = request.reply_chat_id.toString();
    }

    Either<CommonResponse, ErrorResponse> res;
    String url = "${Settings.url}/chat/send";

    var req = http.MultipartRequest('POST', Uri.parse(url));

    if(request.media.toString().isNotEmpty){
      final file = await http.MultipartFile.fromPath('image', request.media.toString()); 
      
    }

    req.fields.addAll(body);
    req.headers.addAll(Header().headers());
    var response = await req.send();
    var printResponse = await response.stream.bytesToString();

    try{
      debugPrint("api = $url ,response = $printResponse");

      var jo = json.decode(printResponse);
      if(response.statusCode == 201){
        res = Left(CommonResponse.fromJson(jo));
      } else {
        res = Right(ErrorResponse.fromJson(jo));
      }

    } catch(e){
      var error = ErrorResponse();      
      res = Right(error.callback());
      throw Exception("Gagal send message dude = $e");
    }
    return res;               
  }
}