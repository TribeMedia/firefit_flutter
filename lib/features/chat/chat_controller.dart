import 'package:firefit/features/chat/database/message.dart' as db_message;
import 'package:flutter/material.dart';

class ChatController extends ChangeNotifier {
  final List<db_message.Message> _messages = [];

  List<db_message.Message> get messages => _messages;

  void addMessage(db_message.Message message) {
    _messages.add(message);
    notifyListeners();
  }

  void updateMessage(int id, db_message.Message updatedMessage) {
    final index = _messages.indexWhere((msg) => msg.id == id);
    if (index != -1) {
      _messages[index] = updatedMessage;
      notifyListeners();
    }
  }

  void removeMessage(int id) {
    _messages.removeWhere((msg) => msg.id == id);
    notifyListeners();
  }

  void clearMessages() {
    _messages.clear();
    notifyListeners();
  }
}
