abstract class StorageServiceInterface {
  Future<void> deleteSession();
  Future<Map<String, dynamic>?> getSession();
  Future<void> saveSession(Map<String, dynamic> session);
}
