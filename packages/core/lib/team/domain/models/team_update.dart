class TeamUpdate {
  final String id;
  final String title;
  final String description;
  final DateTime timestamp;
  final TeamUpdateType type;
  final String authorId;
  final String? authorName;
  final String? authorImageUrl;
  final bool isUrgent;
  final List<String>? affectedMemberIds;
  final Map<String, dynamic>? metadata;

  const TeamUpdate({
    required this.id,
    required this.title,
    required this.description,
    required this.timestamp,
    required this.type,
    required this.authorId,
    this.authorName,
    this.authorImageUrl,
    this.isUrgent = false,
    this.affectedMemberIds,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'timestamp': timestamp.toIso8601String(),
        'type': type.toString(),
        'authorId': authorId,
        if (authorName != null) 'authorName': authorName,
        if (authorImageUrl != null) 'authorImageUrl': authorImageUrl,
        'isUrgent': isUrgent,
        if (affectedMemberIds != null) 'affectedMemberIds': affectedMemberIds,
        if (metadata != null) 'metadata': metadata,
      };

  factory TeamUpdate.fromJson(Map<String, dynamic> json) => TeamUpdate(
        id: json['id'] as String,
        title: json['title'] as String,
        description: json['description'] as String,
        timestamp: DateTime.parse(json['timestamp'] as String),
        type: TeamUpdateType.values
            .firstWhere((e) => e.toString() == json['type']),
        authorId: json['authorId'] as String,
        authorName: json['authorName'] as String?,
        authorImageUrl: json['authorImageUrl'] as String?,
        isUrgent: json['isUrgent'] as bool? ?? false,
        affectedMemberIds: (json['affectedMemberIds'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum TeamUpdateType {
  mealPlan,
  dietaryRestriction,
  groceryOrder,
  mealPrep,
  shiftChange,
  specialEvent
}
