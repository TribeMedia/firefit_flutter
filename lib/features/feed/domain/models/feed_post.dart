class FeedPost {
  final String id;
  final String text;
  final DateTime createdAt;
  final List<String> images;
  final int likeCount;
  final int repostCount;
  final int replyCount;
  final bool isLiked;
  final bool isReposted;
  final FeedPostAuthor author;

  FeedPost({
    required this.id,
    required this.text,
    required this.createdAt,
    this.images = const [],
    this.likeCount = 0,
    this.repostCount = 0,
    this.replyCount = 0,
    this.isLiked = false,
    this.isReposted = false,
    required this.author,
  });

  factory FeedPost.fromJson(Map<String, dynamic> json) {
    return FeedPost(
      id: json['id'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      likeCount: json['likeCount'] as int? ?? 0,
      repostCount: json['repostCount'] as int? ?? 0,
      replyCount: json['replyCount'] as int? ?? 0,
      isLiked: json['isLiked'] as bool? ?? false,
      isReposted: json['isReposted'] as bool? ?? false,
      author: FeedPostAuthor.fromJson(json['author'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'createdAt': createdAt.toIso8601String(),
      'images': images,
      'likeCount': likeCount,
      'repostCount': repostCount,
      'replyCount': replyCount,
      'isLiked': isLiked,
      'isReposted': isReposted,
      'author': author.toJson(),
    };
  }
}

class FeedPostAuthor {
  final String did;
  final String handle;
  final String displayName;
  final String? avatar;

  FeedPostAuthor({
    required this.did,
    required this.handle,
    required this.displayName,
    this.avatar,
  });

  factory FeedPostAuthor.fromJson(Map<String, dynamic> json) {
    return FeedPostAuthor(
      did: json['did'] as String,
      handle: json['handle'] as String,
      displayName: json['displayName'] as String,
      avatar: json['avatar'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'did': did,
      'handle': handle,
      'displayName': displayName,
      'avatar': avatar,
    };
  }
}
