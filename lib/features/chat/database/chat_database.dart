import 'package:drift/drift.dart';
import 'package:firefit/features/chat/database/tables/tables.dart';
import 'package:flutter/foundation.dart';

part 'chat_database.g.dart';



@DriftDatabase(tables: [Messages, Users])
class ChatDatabase extends _$ChatDatabase {
  ChatDatabase(super.e);

  @override
  int get schemaVersion => 1;

  // User Operations with Electric awareness
  Future<User> createUser({
    required String userId,
    String? firstName,
    String? lastName,
    List<double>? embedding,
  }) async {
    final user = await into(users).insertReturning(
      UsersCompanion.insert(
        userId: userId,
        firstName: firstName == null ? const Value.absent() : Value(firstName),
        lastName: lastName == null ? const Value.absent() : Value(lastName),
        embedding: embedding == null
            ? const Value.absent()
            : Value(Uint8List.fromList(
                embedding.map((e) => (e * 255).toInt()).toList())),
      ),
    );

    return user;
  }

  // Message Operations with Electric awareness
  Future<Message> createMessage({
    required String messageId,
    required int authorId,
    required String content,
    List<double>? embedding,
    String? contextHash,
  }) async {
    // Create the companion object
    final companion = MessagesCompanion.insert(
      messageId: messageId,
      authorId: authorId,
      content: content,
      timestamp: DateTime.now().millisecondsSinceEpoch,
      embedding: embedding == null
          ? const Value.absent()
          : Value(Uint8List.fromList(
              embedding.map((e) => (e * 255).toInt()).toList())),
      contextHash:
          contextHash == null ? const Value.absent() : Value(contextHash),
    );

    // Insert and get the id
    final id = await into(messages).insert(companion);

    // Fetch the complete message
    final message =
        await (select(messages)..where((m) => m.id.equals(id))).getSingle();

    return message;
  }

  // Simplified watch method that returns only Message objects
  Stream<List<Message>> watchMessages({int limit = 50}) {
    final query = select(messages)..limit(limit);

    return query.watch();
  }

  // Optional: If you need a single message watch
  Stream<Message?> watchMessage(int messageId) {
    final query = select(messages)..where((m) => m.id.equals(messageId));
    return query.watchSingleOrNull();
  }
}
