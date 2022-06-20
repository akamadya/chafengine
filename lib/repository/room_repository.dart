import 'package:chaf_engine/data/room_detail.dart';
import 'package:chaf_engine/network/model/error.dart';
import 'package:chaf_engine/network/room_provider.dart';
import 'package:dartz/dartz.dart';

class RoomRepository{
  final _provider = RoomProvider();

  Future<Either<RoomDetail, Error>> resultDetail(String code) {
    return _provider.roomDetail(code);
  }
}