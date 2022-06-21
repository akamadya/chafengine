import 'dart:convert';
import 'package:chaf_engine/data/local/shared_prefs.dart';
import 'package:chaf_engine/data/room_detail.dart';
import 'package:chaf_engine/network/model/header.dart';
import 'package:chaf_engine/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:chaf_engine/network/model/error.dart';

class RoomProvider {
  
  Future<Either<RoomDetail, Error>> roomDetail(codeRoom) async{
    if(kDebugMode){
      print("code Room = $codeRoom");
    }

    Either<RoomDetail, Error> res;
    String url = "";
    SharePrefs().getString("url").then((value) => url = value);
    var response = await http.get(Uri.parse("$url/room/$codeRoom"),
                   headers: Header().headers());
    
    try{
      if (kDebugMode) {
        print("api = $url/room/$codeRoom ,response = ${response.body}");
      }

      var jo = json.decode(response.body);
      if(response.statusCode == 200){
        res = Left(RoomDetail.fromJson(jo));
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