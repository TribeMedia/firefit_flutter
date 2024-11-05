// packages/core/lib/src/team/domain/models/shift_status.dart

import 'package:flutter/material.dart';
import 'package:core/team/domain/models/shift_schedule.dart';

class ShiftStatus {
  final String id;
  final ShiftStatusType type;
  final DateTime startTime;
  final DateTime endTime;
  final String stationId;
  final String shiftId;
  final List<String> onDutyMembers;
  final String? notes;
  final ShiftRole? role;
  final bool isOvertime;
  final Map<String, dynamic>? metadata;

  const ShiftStatus({
    required this.id,
    required this.type,
    required this.startTime,
    required this.endTime,
    required this.stationId,
    required this.shiftId,
    required this.onDutyMembers,
    this.notes,
    this.role,
    this.isOvertime = false,
    this.metadata,
  });

  bool get isActive =>
      DateTime.now().isAfter(startTime) && DateTime.now().isBefore(endTime);

  Duration get remainingTime => endTime.difference(DateTime.now());

  Duration get elapsedTime => DateTime.now().difference(startTime);

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type.toString(),
        'startTime': startTime.toIso8601String(),
        'endTime': endTime.toIso8601String(),
        'stationId': stationId,
        'shiftId': shiftId,
        'onDutyMembers': onDutyMembers,
        if (notes != null) 'notes': notes,
        if (role != null) 'role': role.toString(),
        'isOvertime': isOvertime,
        if (metadata != null) 'metadata': metadata,
      };

  factory ShiftStatus.fromJson(Map<String, dynamic> json) => ShiftStatus(
        id: json['id'] as String,
        type: ShiftStatusType.values
            .firstWhere((e) => e.toString() == json['type']),
        startTime: DateTime.parse(json['startTime'] as String),
        endTime: DateTime.parse(json['endTime'] as String),
        stationId: json['stationId'] as String,
        shiftId: json['shiftId'] as String,
        onDutyMembers:
            (json['onDutyMembers'] as List).map((e) => e as String).toList(),
        notes: json['notes'] as String?,
        role: json['role'] != null
            ? ShiftRole.values.firstWhere((e) => e.toString() == json['role'])
            : null,
        isOvertime: json['isOvertime'] as bool? ?? false,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );

  ShiftStatus copyWith({
    String? id,
    ShiftStatusType? type,
    DateTime? startTime,
    DateTime? endTime,
    String? stationId,
    String? shiftId,
    List<String>? onDutyMembers,
    String? notes,
    ShiftRole? role,
    bool? isOvertime,
    Map<String, dynamic>? metadata,
  }) {
    return ShiftStatus(
      id: id ?? this.id,
      type: type ?? this.type,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      stationId: stationId ?? this.stationId,
      shiftId: shiftId ?? this.shiftId,
      onDutyMembers: onDutyMembers ?? this.onDutyMembers,
      notes: notes ?? this.notes,
      role: role ?? this.role,
      isOvertime: isOvertime ?? this.isOvertime,
      metadata: metadata ?? this.metadata,
    );
  }
}

enum ShiftStatusType {
  onDuty,
  offDuty,
  training,
  standby,
  emergency,
  overtime,
  sick,
  vacation,
  specialAssignment
}

extension ShiftStatusTypeExtension on ShiftStatusType {
  String get displayName {
    switch (this) {
      case ShiftStatusType.onDuty:
        return 'On Duty';
      case ShiftStatusType.offDuty:
        return 'Off Duty';
      case ShiftStatusType.training:
        return 'Training';
      case ShiftStatusType.standby:
        return 'Standby';
      case ShiftStatusType.emergency:
        return 'Emergency';
      case ShiftStatusType.overtime:
        return 'Overtime';
      case ShiftStatusType.sick:
        return 'Sick Leave';
      case ShiftStatusType.vacation:
        return 'Vacation';
      case ShiftStatusType.specialAssignment:
        return 'Special Assignment';
    }
  }

  IconData get icon {
    switch (this) {
      case ShiftStatusType.onDuty:
        return Icons.local_fire_department;
      case ShiftStatusType.offDuty:
        return Icons.home;
      case ShiftStatusType.training:
        return Icons.school;
      case ShiftStatusType.standby:
        return Icons.access_time;
      case ShiftStatusType.emergency:
        return Icons.emergency;
      case ShiftStatusType.overtime:
        return Icons.more_time;
      case ShiftStatusType.sick:
        return Icons.sick;
      case ShiftStatusType.vacation:
        return Icons.beach_access;
      case ShiftStatusType.specialAssignment:
        return Icons.assignment;
    }
  }

  Color get color {
    switch (this) {
      case ShiftStatusType.onDuty:
        return const Color(0xFF22C55E); // Green
      case ShiftStatusType.offDuty:
        return const Color(0xFF64748B); // Slate
      case ShiftStatusType.training:
        return const Color(0xFF6366F1); // Indigo
      case ShiftStatusType.standby:
        return const Color(0xFFF59E0B); // Amber
      case ShiftStatusType.emergency:
        return const Color(0xFFEF4444); // Red
      case ShiftStatusType.overtime:
        return const Color(0xFFEC4899); // Pink
      case ShiftStatusType.sick:
        return const Color(0xFFF43F5E); // Rose
      case ShiftStatusType.vacation:
        return const Color(0xFF0EA5E9); // Sky
      case ShiftStatusType.specialAssignment:
        return const Color(0xFF8B5CF6); // Purple
    }
  }

  bool get affectsMealSchedule {
    return [
      ShiftStatusType.onDuty,
      ShiftStatusType.training,
      ShiftStatusType.standby,
      ShiftStatusType.overtime,
      ShiftStatusType.specialAssignment,
    ].contains(this);
  }

  bool get isUrgent {
    return [
      ShiftStatusType.emergency,
      ShiftStatusType.overtime,
    ].contains(this);
  }
}

// Helper class for shift timing calculations
class ShiftTiming {
  static bool isWithinShift(
      DateTime time, DateTime shiftStart, DateTime shiftEnd) {
    return time.isAfter(shiftStart) && time.isBefore(shiftEnd);
  }

  static Duration getShiftDuration(DateTime shiftStart, DateTime shiftEnd) {
    return shiftEnd.difference(shiftStart);
  }

  static bool isOvertimeEligible(Duration shiftDuration) {
    return shiftDuration.inHours > 24;
  }

  static DateTime getNextShiftStart(
    DateTime currentShiftEnd,
    Duration restPeriod,
  ) {
    return currentShiftEnd.add(restPeriod);
  }
}
