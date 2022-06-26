import 'dart:convert';

import 'package:chaf_engine/network/model/error.dart';
import 'package:chaf_engine/network/request/common_request.dart';
import 'package:chaf_engine/network/response/chat_list_response.dart';
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
}