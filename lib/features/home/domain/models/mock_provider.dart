class MockProvider {
  final String id;
  final String name;
  final String type;
  final String distance;
  final String imageUrl;
  final bool isOpen;
  final bool hasFirefighterDiscount;
  final List<String> tags;
  final double rating;
  final int numberOfRatings;
  final Map<String, dynamic>? specialOffers;

  const MockProvider({
    required this.id,
    required this.name,
    required this.type,
    required this.distance,
    required this.imageUrl,
    required this.isOpen,
    this.hasFirefighterDiscount = false,
    required this.tags,
    required this.rating,
    required this.numberOfRatings,
    this.specialOffers,
  });
}
