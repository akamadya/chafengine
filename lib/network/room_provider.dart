import 'dart:convert';
import 'package:chaf_engine/network/model/header.dart';
import 'package:chaf_engine/network/response/room_detail_response.dart';
import 'package:chaf_engine/network/response/room_member_response.dart';
import 'package:chaf_engine/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:chaf_engine/network/model/error.dart';

class RoomProvider {
  
  Future<Either<RoomDetailResponse, Error>> roomDetail(codeRoom) async{
    Either<RoomDetailResponse, Error> res;
    String url = Settings.url;
    var response = await http.get(Uri.parse("$url/room/$codeRoom"),
                   headers: Header().headers());
    
    try{
      if (kDebugMode) {
        print("api = $url/room/$codeRoom ,response = ${response.body}");
      }

      var jo = json.decode(response.body);
      if(response.statusCode == 200){
        res = Left(RoomDetailResponse.fromJson(jo));
      } else {
        res = Right(Error.fromJson(jo));
      }

    } catch(e){
      var error = Error();      
      res = Right(error.callback());
      throw Exception("Gagal Room Detail dude = $e");
    }
    return res;
  }

  Future<Either<RoomMemberResponse, Error>> roomMember(codeRoom) async{
    Either<RoomMemberResponse, Error> res;
    String url = Settings.url;
    var response = await http.get(Uri.parse("$url/room/member/?code=$codeRoom"),
        headers: Header().headers());

    try{
      if (kDebugMode) {
        print("api = $url/room/member/$codeRoom ,response = ${response.body}");
      }

      var jo = json.decode(response.body);
      if(response.statusCode == 200){
        res = Left(RoomMemberResponse.fromJson(jo));
      } else {
        res = Right(Error.fromJson(jo));
      }

    } catch(e){
      var error = Error();
      res = Right(error.callback());
      throw Exception("Gagal Room Detail dude = $e");
    }
    return res;
  }
}