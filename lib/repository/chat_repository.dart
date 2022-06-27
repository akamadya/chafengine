import 'package:chaf_engine/network/chat_provider.dart';
import 'package:chaf_engine/network/request/common_request.dart';
import 'package:chaf_engine/network/request/send_chat_request.dart';
import 'package:chaf_engine/network/response/chat_list_response.dart';
import 'package:chaf_engine/network/response/common_response.dart';
import 'package:dartz/dartz.dart';

import '../network/model/error_response.dart';

class ChatRepository{
  final _provider = ChatProvider();

  Future<Either<ChatListResponse, ErrorResponse>> chatList(CommonRequest request) {
    return _provider.chatList(request);
  }

  Future<Either<CommonResponse, ErrorResponse>> sendMsg(SendChatRequest request){
    return _provider.sendChat(request);
  }
}