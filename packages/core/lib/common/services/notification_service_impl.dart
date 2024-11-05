import 'package:core/common/models/notification.dart';
import 'package:core/common/services/notification_service.dart';
import 'package:fpdart/fpdart.dart';
import 'package:core/common/failures/failure.dart';

class NotificationServiceImpl implements NotificationService {
  @override
  Stream<List<Notification>> get notificationStream => Stream.empty();

  @override
  Future<Either<Failure, List<Notification>>> getNotifications() async =>
      right(const []);

  @override
  Future<Either<Failure, void>> deleteAllNotifications() async => right(null);

  @override
  Future<Either<Failure, void>> deleteMultipleNotifications(
      List<String> notificationIds) {
    // TODO: implement deleteMultipleNotifications
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> deleteNotification(String notificationId) {
    // TODO: implement deleteNotification
    throw UnimplementedError();
  }

  @override
  Future<void> dispose() {
    // TODO: implement dispose
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Map<String, bool>>> getNotificationPreferences() {
    // TODO: implement getNotificationPreferences
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Notification>>> getNotificationsByDateRange(
      {required DateTime startDate, required DateTime endDate}) {
    // TODO: implement getNotificationsByDateRange
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Notification>>> getNotificationsByType(
      NotificationType type) {
    // TODO: implement getNotificationsByType
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, int>> getUnreadCount() {
    // TODO: implement getUnreadCount
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> initialize() {
    // TODO: implement initialize
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> markAllAsSeen() {
    // TODO: implement markAllAsSeen
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> markAsSeen(String notificationId) {
    // TODO: implement markAsSeen
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> markMultipleAsSeen(
      List<String> notificationIds) {
    // TODO: implement markMultipleAsSeen
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Notification>> sendNotification({
    required String title,
    required String markdownText,
    String? subtitle,
    required NotificationType type,
    required NotificationPosition position,
    Duration? duration,
    bool? dismissible,
    Map<String, dynamic>? metadata,
  }) {
    // TODO: implement sendNotification
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> subscribeToTopics(List<String> topics) {
    // TODO: implement subscribeToTopics
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> unsubscribeFromTopics(List<String> topics) {
    // TODO: implement unsubscribeFromTopics
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, void>> updateNotificationPreferences(
      {required Map<String, bool> preferences}) {
    // TODO: implement updateNotificationPreferences
    throw UnimplementedError();
  }
}
