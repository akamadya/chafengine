import 'package:chaf_engine/network/model/error.dart';
import 'package:chaf_engine/network/response/room_detail_response.dart';
import 'package:chaf_engine/network/response/room_member_response.dart';
import 'package:chaf_engine/network/room_provider.dart';
import 'package:dartz/dartz.dart';

class RoomRepository{
  final _provider = RoomProvider();

  Future<Either<RoomDetailResponse, Error>> resultDetail(String code) {
    return _provider.roomDetail(code);
  }

  Future<Either<RoomMemberResponse, Error>> resultMembers(String code) {
    return _provider.roomMember(code);
  }
}