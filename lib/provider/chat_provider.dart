import 'package:mamapintarcare/data/model/chat_model.dart';
import 'package:mamapintarcare/data/repository/chat_repo.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final ChatRepo chatRepo;
  ChatProvider({@required this.chatRepo});

  List<ChatModel> getChatList() {
    return chatRepo.getChatList();
  }
}
