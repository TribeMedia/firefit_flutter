import 'package:core/core.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NotificationModel {
  final List<Notification> notifications;
  final String? error;
  final int unreadCount;

  NotificationModel({
    required this.notifications,
    this.error,
    required this.unreadCount,
  });
}

class NotificationNotifier extends AsyncNotifier<NotificationModel> {
  @override
  Future<NotificationModel> build() async {
    return NotificationModel(notifications: [], unreadCount: 0);
  }
}

final notificationProvider =
    AsyncNotifierProvider<NotificationNotifier, NotificationModel>(
        () => NotificationNotifier());
