import 'package:core/common/models/time_of_day.dart';

class ShiftSchedule {
  final String id;
  final String stationId;
  final DateTime startDate;
  final DateTime endDate;
  final List<ShiftAssignment> assignments;
  final Map<String, List<TimeOfDay>> mealTimes;
  final Map<String, dynamic>? metadata;

  const ShiftSchedule({
    required this.id,
    required this.stationId,
    required this.startDate,
    required this.endDate,
    required this.assignments,
    required this.mealTimes,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'stationId': stationId,
        'startDate': startDate.toIso8601String(),
        'endDate': endDate.toIso8601String(),
        'assignments': assignments.map((a) => a.toJson()).toList(),
        'mealTimes': mealTimes.map(
          (k, v) => MapEntry(k, v.map((t) => t.toJson()).toList()),
        ),
        if (metadata != null) 'metadata': metadata,
      };

  factory ShiftSchedule.fromJson(Map<String, dynamic> json) => ShiftSchedule(
        id: json['id'] as String,
        stationId: json['stationId'] as String,
        startDate: DateTime.parse(json['startDate'] as String),
        endDate: DateTime.parse(json['endDate'] as String),
        assignments: (json['assignments'] as List)
            .map((a) => ShiftAssignment.fromJson(a))
            .toList(),
        mealTimes: (json['mealTimes'] as Map<String, dynamic>).map(
          (k, v) => MapEntry(
            k,
            (v as List).map((t) => TimeOfDay.fromJson(t)).toList(),
          ),
        ),
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

class ShiftAssignment {
  final String memberId;
  final ShiftRole role;
  final DateTime startTime;
  final DateTime endTime;
  final bool isBackup;

  const ShiftAssignment({
    required this.memberId,
    required this.role,
    required this.startTime,
    required this.endTime,
    this.isBackup = false,
  });

  Map<String, dynamic> toJson() => {
        'memberId': memberId,
        'role': role.toString(),
        'startTime': startTime.toIso8601String(),
        'endTime': endTime.toIso8601String(),
        'isBackup': isBackup,
      };

  factory ShiftAssignment.fromJson(Map<String, dynamic> json) =>
      ShiftAssignment(
        memberId: json['memberId'] as String,
        role: ShiftRole.values.firstWhere((e) => e.toString() == json['role']),
        startTime: DateTime.parse(json['startTime'] as String),
        endTime: DateTime.parse(json['endTime'] as String),
        isBackup: json['isBackup'] as bool? ?? false,
      );
}

enum ShiftRole { captain, lieutenant, firefighter, paramedic, engineer, cook }
