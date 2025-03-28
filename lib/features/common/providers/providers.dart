import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final stationRepositoryProvider = Provider((ref) {
  return StationRepository(
    talker: ref.read(loggingProvider),
    env: Environment(),
  );
});

final flutterSecureStorageProvider = Provider<FlutterSecureStorage>((ref) {
  return FlutterSecureStorage();
});

final hiveProvider = FutureProvider<HiveStore>((ref) async {
  // Create a Hive store for persistence
  final store = await HiveStore.open(path: 'app_cache');
  return store;
});
