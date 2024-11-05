import 'package:flutter/foundation.dart';

enum NotificationType { info, success, warning, error }

enum NotificationPosition {
  topLeft,
  topRight,
  bottomLeft,
  bottomRight,
  topCenter,
  bottomCenter
}

@immutable
class Notification {
  final String id;
  final String title;
  final String? subtitle;
  final String markdownText;
  final NotificationType type;
  final NotificationPosition position;
  final Duration duration;
  final bool dismissible;
  final Map<String, dynamic>? metadata;

  const Notification({
    required this.id,
    required this.title,
    this.subtitle,
    required this.markdownText,
    this.type = NotificationType.info,
    this.position = NotificationPosition.topRight,
    this.duration = const Duration(seconds: 5),
    this.dismissible = true,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'subtitle': subtitle,
        'markdownText': markdownText,
        'type': type.name,
        'position': position.name,
        'duration': duration.inMilliseconds,
        'dismissible': dismissible,
        if (metadata != null) 'metadata': metadata,
      };

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        id: json['id'] as String,
        title: json['title'] as String,
        subtitle: json['subtitle'] as String?,
        markdownText: json['markdownText'] as String,
        type: NotificationType.values.firstWhere(
          (e) => e.name == json['type'],
          orElse: () => NotificationType.info,
        ),
        position: NotificationPosition.values.firstWhere(
          (e) => e.name == json['position'],
          orElse: () => NotificationPosition.topRight,
        ),
        duration: Duration(milliseconds: json['duration'] as int),
        dismissible: json['dismissible'] as bool? ?? true,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );

  Notification copyWith({
    String? id,
    String? title,
    String? subtitle,
    String? markdownText,
    NotificationType? type,
    NotificationPosition? position,
    Duration? duration,
    bool? dismissible,
    Map<String, dynamic>? metadata,
  }) {
    return Notification(
      id: id ?? this.id,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      markdownText: markdownText ?? this.markdownText,
      type: type ?? this.type,
      position: position ?? this.position,
      duration: duration ?? this.duration,
      dismissible: dismissible ?? this.dismissible,
      metadata: metadata ?? this.metadata,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Notification &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          title == other.title &&
          subtitle == other.subtitle &&
          markdownText == other.markdownText &&
          type == other.type &&
          position == other.position &&
          duration == other.duration &&
          dismissible == other.dismissible;

  @override
  int get hashCode =>
      id.hashCode ^
      title.hashCode ^
      subtitle.hashCode ^
      markdownText.hashCode ^
      type.hashCode ^
      position.hashCode ^
      duration.hashCode ^
      dismissible.hashCode;
}
