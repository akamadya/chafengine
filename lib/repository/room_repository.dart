import 'package:chaf_engine/data/entitiy/room_member.dart';
import 'package:chaf_engine/data/entitiy/room_detail.dart';
import 'package:chaf_engine/network/model/error.dart';
import 'package:chaf_engine/network/room_provider.dart';
import 'package:dartz/dartz.dart';

class RoomRepository{
  final _provider = RoomProvider();

  Future<Either<RoomDetail, Error>> resultDetail(String code) {
    return _provider.roomDetail(code);
  }

  Future<Either<RoomMember, Error>> resultMembers(String code) {
    return _provider.roomMember(code);
  }
}