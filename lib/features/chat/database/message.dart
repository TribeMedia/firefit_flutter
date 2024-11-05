import 'package:drift/drift.dart';
import 'package:firefit/features/chat/database/user.dart';

@TableIndex(name: 'message_id', columns: {#messageId})
class Message {
  final int id;
  final String messageId;
  final int authorId;
  final String text;
  final int createdAt;
  final User? author;

  Message({
    required this.id,
    required this.messageId,
    required this.authorId,
    required this.text,
    required this.createdAt,
    this.author,
  });
}
