import 'package:core/common/failures/failure.dart';
import 'package:core/common/models/notification.dart';
import 'package:fpdart/fpdart.dart';

abstract class NotificationService {
  /// Stream of notifications for real-time updates
  Stream<List<Notification>> get notificationStream;

  /// Get all notifications for the current user
  Future<Either<Failure, List<Notification>>> getNotifications();

  /// Get unread notifications count
  Future<Either<Failure, int>> getUnreadCount();

  /// Send a new notification
  /// Returns the created notification or a failure
  Future<Either<Failure, Notification>> sendNotification({
    required String title,
    required String markdownText,
    String? subtitle,
    required NotificationType type,
    required NotificationPosition position,
    Duration? duration,
    bool? dismissible,
    Map<String, dynamic>? metadata,
  });

  /// Mark a single notification as seen
  Future<Either<Failure, void>> markAsSeen(String notificationId);

  /// Mark multiple notifications as seen
  Future<Either<Failure, void>> markMultipleAsSeen(
      List<String> notificationIds);

  /// Mark all notifications as seen
  Future<Either<Failure, void>> markAllAsSeen();

  /// Delete a notification
  Future<Either<Failure, void>> deleteNotification(String notificationId);

  /// Delete multiple notifications
  Future<Either<Failure, void>> deleteMultipleNotifications(
      List<String> notificationIds);

  /// Delete all notifications
  Future<Either<Failure, void>> deleteAllNotifications();

  /// Subscribe to notifications for specific topics/channels
  Future<Either<Failure, void>> subscribeToTopics(List<String> topics);

  /// Unsubscribe from specific topics/channels
  Future<Either<Failure, void>> unsubscribeFromTopics(List<String> topics);

  /// Get notifications filtered by type
  Future<Either<Failure, List<Notification>>> getNotificationsByType(
    NotificationType type,
  );

  /// Get notifications within a date range
  Future<Either<Failure, List<Notification>>> getNotificationsByDateRange({
    required DateTime startDate,
    required DateTime endDate,
  });

  /// Update notification preferences for the current user
  Future<Either<Failure, void>> updateNotificationPreferences({
    required Map<String, bool> preferences,
  });

  /// Get current notification preferences
  Future<Either<Failure, Map<String, bool>>> getNotificationPreferences();

  /// Initialize the notification service
  Future<Either<Failure, void>> initialize();

  /// Dispose of any resources
  Future<void> dispose();
}

/// Optional mixin for handling notification badge counts
mixin NotificationBadgeHandler {
  int _badgeCount = 0;

  int get currentBadgeCount => _badgeCount;

  void updateBadgeCount(int count) {
    _badgeCount = count;
    _updateSystemBadge(count);
  }

  void incrementBadgeCount() {
    _badgeCount++;
    _updateSystemBadge(_badgeCount);
  }

  void decrementBadgeCount() {
    if (_badgeCount > 0) {
      _badgeCount--;
      _updateSystemBadge(_badgeCount);
    }
  }

  void clearBadgeCount() {
    _badgeCount = 0;
    _updateSystemBadge(0);
  }

  /// Platform-specific badge update implementation
  void _updateSystemBadge(int count);
}

/// Optional mixin for handling notification permissions
mixin NotificationPermissionHandler {
  Future<bool> requestPermissions();
  Future<bool> checkPermissions();
  Future<void> openSettings();
}
