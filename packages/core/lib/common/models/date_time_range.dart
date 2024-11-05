class DateTimeRange {
  final DateTime start;
  final DateTime end;

  const DateTimeRange({
    required this.start,
    required this.end,
  });

  bool contains(DateTime date) {
    return date.isAfter(start) && date.isBefore(end);
  }

  bool get isValid => end.isAfter(start);

  Duration get duration => end.difference(start);

  DateTimeRange copyWith({
    DateTime? start,
    DateTime? end,
  }) {
    return DateTimeRange(
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  Map<String, dynamic> toJson() => {
        'start': start.toIso8601String(),
        'end': end.toIso8601String(),
      };

  factory DateTimeRange.fromJson(Map<String, dynamic> json) => DateTimeRange(
        start: DateTime.parse(json['start'] as String),
        end: DateTime.parse(json['end'] as String),
      );

  // Utility constructors
  factory DateTimeRange.today() {
    final now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day);
    final end = start.add(const Duration(days: 1));
    return DateTimeRange(start: start, end: end);
  }

  factory DateTimeRange.thisWeek() {
    final now = DateTime.now();
    final start = DateTime(now.year, now.month, now.day)
        .subtract(Duration(days: now.weekday - 1));
    final end = start.add(const Duration(days: 7));
    return DateTimeRange(start: start, end: end);
  }

  factory DateTimeRange.thisMonth() {
    final now = DateTime.now();
    final start = DateTime(now.year, now.month, 1);
    final end = DateTime(now.year, now.month + 1, 1);
    return DateTimeRange(start: start, end: end);
  }

  // Comparison methods
  bool overlaps(DateTimeRange other) {
    return start.isBefore(other.end) && end.isAfter(other.start);
  }

  DateTimeRange intersection(DateTimeRange other) {
    final intersectionStart = start.isAfter(other.start) ? start : other.start;
    final intersectionEnd = end.isBefore(other.end) ? end : other.end;
    return DateTimeRange(
      start: intersectionStart,
      end: intersectionEnd,
    );
  }
}
