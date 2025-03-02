import 'dart:convert';

import 'package:core/auth/domain/services/storage_service_interface.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService implements StorageServiceInterface {
  final FlutterSecureStorage secureStorage;
  static const String _sessionKey = 'auth_session';

  StorageService(this.secureStorage);

  @override
  Future<void> saveSession(Map<String, dynamic> session) async {
    await secureStorage.write(
      key: _sessionKey,
      value: jsonEncode(session),
    );
  }

  @override
  Future<Map<String, dynamic>?> getSession() async {
    final sessionJson = await secureStorage.read(key: _sessionKey);
    if (sessionJson == null) return null;
    return jsonDecode(sessionJson) as Map<String, dynamic>;
  }

  @override
  Future<void> deleteSession() async {
    await secureStorage.delete(key: _sessionKey);
  }
}
