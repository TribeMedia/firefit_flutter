class User {
  final int id;
  final String userId;
  final String? firstName;
  final String? lastName;

  User({
    required this.id,
    required this.userId,
    this.firstName,
    this.lastName,
  });

  String get fullName => [firstName, lastName]
      .where((name) => name != null && name.isNotEmpty)
      .join(' ');
}

final userAssistant = User(
  id: -1,
  userId: 'assistant',
  firstName: 'Assistant',
  lastName: '',
);
