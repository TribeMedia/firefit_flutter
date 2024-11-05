import 'dart:math';

class Location {
  final double latitude;
  final double longitude;
  final String address;
  final String? unit;
  final String city;
  final String state;
  final String postalCode;
  final String country;
  final Map<String, dynamic>? metadata;

  const Location({
    required this.latitude,
    required this.longitude,
    required this.address,
    this.unit,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
    this.metadata,
  });

  String distanceFromCurrentLocation() {
    // Implement distance calculation logic
    return '0.0 mi';
  }

  double distanceTo(Location other) {
    const double earthRadius = 6371000; // Earth's radius in meters

    final lat1 = latitude * (pi / 180);
    final lat2 = other.latitude * (pi / 180);
    final dLat = (other.latitude - latitude) * (pi / 180);
    final dLon = (other.longitude - longitude) * (pi / 180);

    final a = sin(dLat / 2) * sin(dLat / 2) +
        cos(lat1) * cos(lat2) * sin(dLon / 2) * sin(dLon / 2);
    final c = 2 * atan2(sqrt(a), sqrt(1 - a));

    return earthRadius * c; // Returns distance in meters
  }

  Map<String, dynamic> toJson() => {
        'latitude': latitude,
        'longitude': longitude,
        'address': address,
        if (unit != null) 'unit': unit,
        'city': city,
        'state': state,
        'postalCode': postalCode,
        'country': country,
        if (metadata != null) 'metadata': metadata,
      };

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: (json['latitude'] as num).toDouble(),
        longitude: (json['longitude'] as num).toDouble(),
        address: json['address'] as String,
        unit: json['unit'] as String?,
        city: json['city'] as String,
        state: json['state'] as String,
        postalCode: json['postalCode'] as String,
        country: json['country'] as String,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}
