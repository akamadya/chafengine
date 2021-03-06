import 'dart:convert';
import 'package:chaf_engine/network/model/error_response.dart';
import 'package:chaf_engine/network/model/header.dart';
import 'package:chaf_engine/network/response/room_detail_response.dart';
import 'package:chaf_engine/network/response/room_member_response.dart';
import 'package:chaf_engine/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';

class RoomProvider {
  
  Future<Either<RoomDetailResponse, ErrorResponse>> roomDetail(codeRoom) async{
    Either<RoomDetailResponse, ErrorResponse> res;
    String url = "${Settings.url}/room/$codeRoom";
    var response = await http.get(Uri.parse(url),
                   headers: Header().headers());
    
    try{
      if (kDebugMode) {
        print("api = $url ,response = ${response.body}");
      }

      var jo = json.decode(response.body);
      if(response.statusCode == 200){
        res = Left(RoomDetailResponse.fromJson(jo));
      } else {
        res = Right(ErrorResponse.fromJson(jo));
      }

    } catch(e){
      var error = ErrorResponse();      
      res = Right(error.callback());
      throw Exception("Gagal Room Detail dude = $e");
    }
    return res;
  }

  Future<Either<RoomMemberResponse, ErrorResponse>> roomMember(codeRoom) async{
    Either<RoomMemberResponse, ErrorResponse> res;
    String url = "${Settings.url}/room/member/?code=$codeRoom";
    var response = await http.get(Uri.parse(url),
        headers: Header().headers());

    try{
      if (kDebugMode) {
        print("api = $url ,response = ${response.body}");
      }

      var jo = json.decode(response.body);
      if(response.statusCode == 200){
        res = Left(RoomMemberResponse.fromJson(jo));
      } else {
        res = Right(ErrorResponse.fromJson(jo));
      }

    } catch(e){
      var error = ErrorResponse();
      res = Right(error.callback());
      throw Exception("Gagal Room Member dude = $e");
    }
    return res;
  }
}