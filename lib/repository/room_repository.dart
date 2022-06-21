import 'package:chaf_engine/data/local/shared_prefs.dart';
import 'package:chaf_engine/data/room_detail.dart';
import 'package:chaf_engine/network/model/error.dart';
import 'package:chaf_engine/network/room_provider.dart';
import 'package:chaf_engine/settings.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

class RoomRepository{
  final _provider = RoomProvider();

  Future<Either<RoomDetail, Error>> resultDetail(String code) {
    return _provider.roomDetail(code);
  }

  void logData(){
    final url = SharePrefs().getString("chaf_url");
    final key = SharePrefs().getString("chaf_secretKey");
    if(kDebugMode){
      print("url = $url, key = $key");
    }

    debugPrint("url from setting = ${Settings().getUrl()}");
  }
}