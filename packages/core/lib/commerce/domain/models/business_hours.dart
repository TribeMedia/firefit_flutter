import 'package:core/common/models/time_of_day.dart';

class BusinessHours {
  final Map<String, List<TimeRange>> weeklyHours;
  final List<SpecialHours> specialHours;
  final List<DateTime> holidays;

  const BusinessHours({
    required this.weeklyHours,
    this.specialHours = const [],
    this.holidays = const [],
  });

  bool isOpenNow() {
    // Implement open status logic
    return true;
  }

  Map<String, dynamic> toJson() => {
        'weeklyHours': weeklyHours.map(
          (k, v) => MapEntry(k, v.map((tr) => tr.toJson()).toList()),
        ),
        'specialHours': specialHours.map((sh) => sh.toJson()).toList(),
        'holidays': holidays.map((h) => h.toIso8601String()).toList(),
      };

  factory BusinessHours.fromJson(Map<String, dynamic> json) => BusinessHours(
        weeklyHours: (json['weeklyHours'] as Map<String, dynamic>).map(
          (k, v) => MapEntry(
            k,
            (v as List).map((tr) => TimeRange.fromJson(tr)).toList(),
          ),
        ),
        specialHours: (json['specialHours'] as List)
            .map((sh) => SpecialHours.fromJson(sh))
            .toList(),
        holidays: (json['holidays'] as List)
            .map((h) => DateTime.parse(h as String))
            .toList(),
      );
}

class TimeRange {
  final TimeOfDay start;
  final TimeOfDay end;

  const TimeRange({
    required this.start,
    required this.end,
  });

  Map<String, dynamic> toJson() => {
        'start': '${start.hour}:${start.minute}',
        'end': '${end.hour}:${end.minute}',
      };

  factory TimeRange.fromJson(Map<String, dynamic> json) {
    List<int> parseTime(String time) {
      final parts = time.split(':');
      return [int.parse(parts[0]), int.parse(parts[1])];
    }

    final startParts = parseTime(json['start'] as String);
    final endParts = parseTime(json['end'] as String);

    return TimeRange(
      start: TimeOfDay(hour: startParts[0], minute: startParts[1]),
      end: TimeOfDay(hour: endParts[0], minute: endParts[1]),
    );
  }
}

class SpecialHours {
  final DateTime date;
  final List<TimeRange> hours;
  final String? reason;

  const SpecialHours({
    required this.date,
    required this.hours,
    this.reason,
  });

  Map<String, dynamic> toJson() => {
        'date': date.toIso8601String(),
        'hours': hours.map((h) => h.toJson()).toList(),
        if (reason != null) 'reason': reason,
      };

  factory SpecialHours.fromJson(Map<String, dynamic> json) => SpecialHours(
        date: DateTime.parse(json['date'] as String),
        hours:
            (json['hours'] as List).map((h) => TimeRange.fromJson(h)).toList(),
        reason: json['reason'] as String?,
      );
}
