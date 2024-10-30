class User {
  final String id;
  final String? firstName;
  final String? lastName;

  User({
    required this.id,
    this.firstName,
    this.lastName,
  });

  String get fullName => [firstName, lastName]
      .where((name) => name != null && name.isNotEmpty)
      .join(' ');

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is User &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              firstName == other.firstName &&
              lastName == other.lastName;

  @override
  int get hashCode => id.hashCode ^ firstName.hashCode ^ lastName.hashCode;
}