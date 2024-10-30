import 'package:firefit/features/chat/message.dart';
import 'package:flutter/foundation.dart';

class ChatController extends ChangeNotifier {
  final List<Message> _messages = [];

  List<Message> get messages => List.unmodifiable(_messages);

  void addMessage(Message message) {
    _messages.insert(0, message);
    notifyListeners();
  }

  void updateMessage(Message updatedMessage) {
    final index = _messages.indexWhere((m) => m.id == updatedMessage.id);
    if (index != -1) {
      _messages[index] = updatedMessage;
      notifyListeners();
    }
  }

  void removeMessage(String messageId) {
    _messages.removeWhere((m) => m.id == messageId);
    notifyListeners();
  }

  void clearMessages() {
    _messages.clear();
    notifyListeners();
  }
}
