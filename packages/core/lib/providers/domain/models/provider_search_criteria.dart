import 'package:core/commerce/domain/models/price_range.dart';

class ProviderSearchCriteria {
  final double latitude;
  final double longitude;
  final double radius;
  final List<String> cuisineTypes;
  final bool openNow;
  final bool hasFirefighterDiscount;
  final PriceRange? priceRange;
  final int? minimumRating;

  const ProviderSearchCriteria({
    required this.latitude,
    required this.longitude,
    required this.radius,
    this.cuisineTypes = const [],
    this.openNow = true,
    this.hasFirefighterDiscount = false,
    this.priceRange,
    this.minimumRating,
  });
}
