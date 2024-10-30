import 'package:firefit/features/chat/user.dart';

class Message {
  final String id;
  final User author;
  final String text;
  final int createdAt;

  Message({
    required this.id,
    required this.author,
    required this.text,
    required this.createdAt,
  });

  Message copyWith({
    String? id,
    User? author,
    String? text,
    int? createdAt,
  }) {
    return Message(
      id: id ?? this.id,
      author: author ?? this.author,
      text: text ?? this.text,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Message &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          author == other.author &&
          text == other.text &&
          createdAt == other.createdAt;

  @override
  int get hashCode =>
      id.hashCode ^ author.hashCode ^ text.hashCode ^ createdAt.hashCode;
}
