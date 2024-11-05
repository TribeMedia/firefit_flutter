import 'package:core/meals/domain/models/menu.dart';
import 'package:core/commerce/domain/models/provider_rating.dart';
import 'package:core/common/models/location.dart';
import 'package:core/commerce/domain/models/price_range.dart';
import 'package:core/commerce/domain/models/contact_info.dart';
import 'package:core/commerce/domain/models/business_hours.dart';
import 'package:core/providers/domain/models/provider.dart';
import 'package:core/commerce/domain/models/delivery_info.dart';

class ProviderDetails extends Provider {
  final List<MenuItem> featuredItems;
  final List<String> specialOffers;
  final List<ProviderRating> recentReviews;
  final Map<String, double> ratingBreakdown;
  final List<String> certifications;
  final Map<String, String> policies;
  final List<String> paymentMethods;
  final String? specialInstructions;

  ProviderDetails({
    required super.id,
    required super.name,
    required super.type,
    required super.location,
    required super.hours,
    required super.cuisineTypes,
    required super.priceRange,
    required super.hasFirefighterDiscount,
    required super.rating,
    required super.numberOfRatings,
    required super.images,
    required super.description,
    required super.contactInfo,
    super.deliveryInfo,
    required super.amenities,
    super.metadata,
    required this.featuredItems,
    required this.specialOffers,
    required this.recentReviews,
    required this.ratingBreakdown,
    required this.certifications,
    required this.policies,
    required this.paymentMethods,
    this.specialInstructions,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'featuredItems': featuredItems.map((item) => item.toJson()).toList(),
        'specialOffers': specialOffers,
        'recentReviews':
            recentReviews.map((review) => review.toJson()).toList(),
        'ratingBreakdown': ratingBreakdown,
        'certifications': certifications,
        'policies': policies,
        'paymentMethods': paymentMethods,
        if (specialInstructions != null)
          'specialInstructions': specialInstructions,
      };

  factory ProviderDetails.fromJson(Map<String, dynamic> json) {
    return ProviderDetails(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      location: Location.fromJson(json['location']),
      hours: BusinessHours.fromJson(json['hours']),
      cuisineTypes:
          (json['cuisineTypes'] as List).map((e) => e as String).toList(),
      priceRange: PriceRange.fromJson(json['priceRange']),
      hasFirefighterDiscount: json['hasFirefighterDiscount'] as bool? ?? false,
      rating: (json['rating'] as num).toDouble(),
      numberOfRatings: json['numberOfRatings'] as int,
      images: (json['images'] as List).map((e) => e as String).toList(),
      description: json['description'] as String,
      contactInfo: ContactInfo.fromJson(json['contactInfo']),
      deliveryInfo: json['deliveryInfo'] != null
          ? DeliveryInfo.fromJson(json['deliveryInfo'])
          : null,
      amenities: (json['amenities'] as List).map((e) => e as String).toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      featuredItems: (json['featuredItems'] as List)
          .map((item) => MenuItem.fromJson(item))
          .toList(),
      specialOffers:
          (json['specialOffers'] as List).map((e) => e as String).toList(),
      recentReviews: (json['recentReviews'] as List)
          .map((review) => ProviderRating.fromJson(review))
          .toList(),
      ratingBreakdown: (json['ratingBreakdown'] as Map<String, dynamic>)
          .map((k, v) => MapEntry(k, (v as num).toDouble())),
      certifications:
          (json['certifications'] as List).map((e) => e as String).toList(),
      policies: (json['policies'] as Map<String, dynamic>)
          .map((k, v) => MapEntry(k, v as String)),
      paymentMethods:
          (json['paymentMethods'] as List).map((e) => e as String).toList(),
      specialInstructions: json['specialInstructions'] as String?,
    );
  }
}
