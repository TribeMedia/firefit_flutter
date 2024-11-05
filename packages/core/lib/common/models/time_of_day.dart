class TimeOfDay {
  final int hour;
  final int minute;

  const TimeOfDay({
    required this.hour,
    required this.minute,
  });

  String format24Hour() =>
      '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';

  String format12Hour() {
    final period = hour < 12 ? 'AM' : 'PM';
    final hour12 = hour > 12 ? hour - 12 : (hour == 0 ? 12 : hour);
    return '${hour12.toString()}:${minute.toString().padLeft(2, '0')} $period';
  }

  Map<String, dynamic> toJson() => {
        'hour': hour,
        'minute': minute,
      };

  factory TimeOfDay.fromJson(Map<String, dynamic> json) => TimeOfDay(
        hour: json['hour'] as int,
        minute: json['minute'] as int,
      );

  bool isBefore(TimeOfDay other) {
    return hour < other.hour || (hour == other.hour && minute < other.minute);
  }

  bool isAfter(TimeOfDay other) {
    return hour > other.hour || (hour == other.hour && minute > other.minute);
  }
}
