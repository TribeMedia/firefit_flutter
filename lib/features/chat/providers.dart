import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/chat/database/chat_database.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

// Provider for the database connection
final databaseConnectionProvider = Provider<QueryExecutor>((ref) {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'chat.db'));
    return NativeDatabase(file);
  });
});

// Provider for the ChatDatabase instance
final chatDatabaseProvider =
    AsyncNotifierProvider<ChatDatabaseNotifier, ChatDatabase>(
  ChatDatabaseNotifier.new,
);

class ChatDatabaseNotifier extends AsyncNotifier<ChatDatabase> {
  @override
  Future<ChatDatabase> build() async {
    final logging = ref.read(loggingProvider);
    logging.verbose('ChatDatabaseNotifier build');
    final executor = ref.watch(databaseConnectionProvider);
    final db = ChatDatabase(executor);

    // Initialize Electric if needed
    try {
      await db.initializeElectric(
        serviceUrl: Env.electricServiceUrl, // Replace with your service URL
      );
    } catch (e) {
      debugPrint('Electric initialization failed: $e');
      // Continue without Electric
    }

    return db;
  }

  /*@override
  void dispose() {
    state.whenData((db) => db.close());
    super.dispose();
  }*/
}

// Usage example:
/*final chatMessagesProvider = StreamProvider<List<MessageWithUser>>((ref) {
  return ref.watch(chatDatabaseProvider).when(
        data: (db) => db.watchLatestMessages(),
        loading: () => Stream.value([]),
        error: (_, __) => Stream.value([]),
      );
});*/
