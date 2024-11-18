import 'package:core/common/failures/failure.dart';
import 'package:core/common/models/notification.dart';
import 'package:core/common/services/notification_service.dart';
import 'package:fpdart/fpdart.dart';

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
      List<String> notificationIds) async {
    try {
      return right(null);
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteNotification(String notificationId) async {
    try {
      return right(null);
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, Map<String, bool>>> getNotificationPreferences() async {
    try {
      return right(const {});
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Notification>>> getNotificationsByDateRange(
      {required DateTime startDate, required DateTime endDate}) async {
    try {
      return right(const []);
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }         
  }

  @override
  Future<Either<Failure, int>> getUnreadCount() async {
    try {
      return right(0);
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> initialize() async {
    try {
      return right(null);
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> markAllAsSeen() async {
    return right(null);
  }

  @override
  Future<Either<Failure, void>> markAsSeen(String notificationId) async {
    return right(null);
  }

  @override
  Future<Either<Failure, void>> markMultipleAsSeen(
      List<String> notificationIds)  async {
    return right(null);
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
  }) async {
    try {
      throw UnimplementedError();
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> subscribeToTopics(List<String> topics) async {
    try {
      return right(null);
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> unsubscribeFromTopics(List<String> topics) async {
    try {
      return right(null);
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> updateNotificationPreferences(
      {required Map<String, bool> preferences}) async {
    try {
      return right(null);
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
  
  @override
  Future<void> dispose() async {
    return Future.value();
  }
  
  @override
  Future<Either<Failure, List<Notification>>> getNotificationsByType(NotificationType type) async {
    try {
      return right([]);
    } catch (e) {
      return left(Failure.unprocessableEntity(message: e.toString()));
    }
  }
}
