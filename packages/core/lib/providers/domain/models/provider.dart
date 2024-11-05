import 'package:core/common/models/location.dart';
import 'package:core/commerce/domain/models/price_range.dart';
import 'package:core/commerce/domain/models/contact_info.dart';
import 'package:core/commerce/domain/models/business_hours.dart';
import 'package:core/commerce/domain/models/delivery_info.dart';

class Provider {
  final String id;
  final String name;
  final String type;
  final Location location;
  final BusinessHours hours;
  final List<String> cuisineTypes;
  final PriceRange priceRange;
  final bool hasFirefighterDiscount;
  final double rating;
  final int numberOfRatings;
  final List<String> images;
  final String description;
  final ContactInfo contactInfo;
  final DeliveryInfo? deliveryInfo;
  final List<String> amenities;
  final Map<String, dynamic>? metadata;

  const Provider({
    required this.id,
    required this.name,
    required this.type,
    required this.location,
    required this.hours,
    required this.cuisineTypes,
    required this.priceRange,
    this.hasFirefighterDiscount = false,
    required this.rating,
    required this.numberOfRatings,
    required this.images,
    required this.description,
    required this.contactInfo,
    this.deliveryInfo,
    required this.amenities,
    this.metadata,
  });

  bool get isOpen => hours.isOpenNow();
  String get distance => location.distanceFromCurrentLocation();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'location': location.toJson(),
        'hours': hours.toJson(),
        'cuisineTypes': cuisineTypes,
        'priceRange': priceRange.toJson(),
        'hasFirefighterDiscount': hasFirefighterDiscount,
        'rating': rating,
        'numberOfRatings': numberOfRatings,
        'images': images,
        'description': description,
        'contactInfo': contactInfo.toJson(),
        if (deliveryInfo != null) 'deliveryInfo': deliveryInfo!.toJson(),
        'amenities': amenities,
        if (metadata != null) 'metadata': metadata,
      };

  factory Provider.fromJson(Map<String, dynamic> json) => Provider(
        id: json['id'] as String,
        name: json['name'] as String,
        type: json['type'] as String,
        location: Location.fromJson(json['location']),
        hours: BusinessHours.fromJson(json['hours']),
        cuisineTypes:
            (json['cuisineTypes'] as List).map((e) => e as String).toList(),
        priceRange: PriceRange.fromJson(json['priceRange']),
        hasFirefighterDiscount:
            json['hasFirefighterDiscount'] as bool? ?? false,
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
      );
}
