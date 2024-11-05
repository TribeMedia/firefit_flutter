class ProviderRating {
  final String id;
  final String providerId;
  final String userId;
  final String? userName;
  final double rating;
  final String review;
  final DateTime timestamp;
  final List<String>? images;
  final Map<String, double>? categoryRatings;
  final List<String>? tags;
  final bool isVerifiedPurchase;
  final int helpfulVotes;
  final String? response;
  final DateTime? responseTimestamp;

  const ProviderRating({
    required this.id,
    required this.providerId,
    required this.userId,
    this.userName,
    required this.rating,
    required this.review,
    required this.timestamp,
    this.images,
    this.categoryRatings,
    this.tags,
    this.isVerifiedPurchase = false,
    this.helpfulVotes = 0,
    this.response,
    this.responseTimestamp,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'providerId': providerId,
        'userId': userId,
        if (userName != null) 'userName': userName,
        'rating': rating,
        'review': review,
        'timestamp': timestamp.toIso8601String(),
        if (images != null) 'images': images,
        if (categoryRatings != null) 'categoryRatings': categoryRatings,
        if (tags != null) 'tags': tags,
        'isVerifiedPurchase': isVerifiedPurchase,
        'helpfulVotes': helpfulVotes,
        if (response != null) 'response': response,
        if (responseTimestamp != null)
          'responseTimestamp': responseTimestamp!.toIso8601String(),
      };

  factory ProviderRating.fromJson(Map<String, dynamic> json) => ProviderRating(
        id: json['id'] as String,
        providerId: json['providerId'] as String,
        userId: json['userId'] as String,
        userName: json['userName'] as String?,
        rating: (json['rating'] as num).toDouble(),
        review: json['review'] as String,
        timestamp: DateTime.parse(json['timestamp'] as String),
        images: (json['images'] as List?)?.map((e) => e as String).toList(),
        categoryRatings: (json['categoryRatings'] as Map<String, dynamic>?)
            ?.map((k, v) => MapEntry(k, (v as num).toDouble())),
        tags: (json['tags'] as List?)?.map((e) => e as String).toList(),
        isVerifiedPurchase: json['isVerifiedPurchase'] as bool? ?? false,
        helpfulVotes: json['helpfulVotes'] as int? ?? 0,
        response: json['response'] as String?,
        responseTimestamp: json['responseTimestamp'] != null
            ? DateTime.parse(json['responseTimestamp'] as String)
            : null,
      );
}
