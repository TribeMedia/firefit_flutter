// packages/core/lib/src/common/models/address.dart

import 'package:core/common/models/location.dart';
import 'package:flutter/material.dart';

class Address {
  final String id;
  final String street;
  final String? unit;
  final String city;
  final String state;
  final String postalCode;
  final String country;
  final Location? location;
  final AddressType type;
  final String? label;
  final bool isDefault;
  final bool isVerified;
  final String? notes;
  final Map<String, dynamic>? metadata;

  const Address({
    required this.id,
    required this.street,
    this.unit,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
    this.location,
    this.type = AddressType.other,
    this.label,
    this.isDefault = false,
    this.isVerified = false,
    this.notes,
    this.metadata,
  });

  String get formattedAddress {
    final parts = [
      street,
      if (unit != null) 'Unit $unit',
      '$city, $state $postalCode',
      country,
    ];
    return parts.join('\n');
  }

  String get oneLine {
    final parts = [
      street,
      if (unit != null) '#$unit',
      city,
      state,
      postalCode,
    ];
    return parts.join(', ');
  }

  Address copyWith({
    String? id,
    String? street,
    String? unit,
    String? city,
    String? state,
    String? postalCode,
    String? country,
    Location? location,
    AddressType? type,
    String? label,
    bool? isDefault,
    bool? isVerified,
    String? notes,
    Map<String, dynamic>? metadata,
  }) {
    return Address(
      id: id ?? this.id,
      street: street ?? this.street,
      unit: unit ?? this.unit,
      city: city ?? this.city,
      state: state ?? this.state,
      postalCode: postalCode ?? this.postalCode,
      country: country ?? this.country,
      location: location ?? this.location,
      type: type ?? this.type,
      label: label ?? this.label,
      isDefault: isDefault ?? this.isDefault,
      isVerified: isVerified ?? this.isVerified,
      notes: notes ?? this.notes,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'street': street,
        if (unit != null) 'unit': unit,
        'city': city,
        'state': state,
        'postalCode': postalCode,
        'country': country,
        if (location != null) 'location': location!.toJson(),
        'type': type.toString(),
        if (label != null) 'label': label,
        'isDefault': isDefault,
        'isVerified': isVerified,
        if (notes != null) 'notes': notes,
        if (metadata != null) 'metadata': metadata,
      };

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        id: json['id'] as String,
        street: json['street'] as String,
        unit: json['unit'] as String?,
        city: json['city'] as String,
        state: json['state'] as String,
        postalCode: json['postalCode'] as String,
        country: json['country'] as String,
        location: json['location'] != null
            ? Location.fromJson(json['location'])
            : null,
        type:
            AddressType.values.firstWhere((e) => e.toString() == json['type']),
        label: json['label'] as String?,
        isDefault: json['isDefault'] as bool? ?? false,
        isVerified: json['isVerified'] as bool? ?? false,
        notes: json['notes'] as String?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );

  bool isValid() {
    return street.isNotEmpty &&
        city.isNotEmpty &&
        state.isNotEmpty &&
        postalCode.isNotEmpty &&
        country.isNotEmpty;
  }

  bool isSameAddress(Address other) {
    return street == other.street &&
        unit == other.unit &&
        city == other.city &&
        state == other.state &&
        postalCode == other.postalCode &&
        country == other.country;
  }

  double? distanceTo(Address other) {
    if (location == null || other.location == null) return null;
    return location!.distanceTo(other.location!);
  }
}

enum AddressType { station, provider, delivery, billing, other }

extension AddressTypeExtension on AddressType {
  String get displayName {
    switch (this) {
      case AddressType.station:
        return 'Fire Station';
      case AddressType.provider:
        return 'Food Provider';
      case AddressType.delivery:
        return 'Delivery Address';
      case AddressType.billing:
        return 'Billing Address';
      case AddressType.other:
        return 'Other Address';
    }
  }

  IconData get icon {
    switch (this) {
      case AddressType.station:
        return Icons.local_fire_department;
      case AddressType.provider:
        return Icons.store;
      case AddressType.delivery:
        return Icons.local_shipping;
      case AddressType.billing:
        return Icons.payment;
      case AddressType.other:
        return Icons.location_on;
    }
  }
}

// Address validation utilities
class AddressValidation {
  static bool isValidPostalCode(String postalCode, String country) {
    switch (country.toUpperCase()) {
      case 'US':
        return RegExp(r'^\d{5}(-\d{4})?$').hasMatch(postalCode);
      case 'CA':
        return RegExp(r'^[A-Za-z]\d[A-Za-z][ -]?\d[A-Za-z]\d$')
            .hasMatch(postalCode);
      default:
        return postalCode.isNotEmpty;
    }
  }

  static bool isValidState(String state, String country) {
    switch (country.toUpperCase()) {
      case 'US':
        return RegExp(r'^[A-Z]{2}$').hasMatch(state.toUpperCase());
      case 'CA':
        return RegExp(r'^[A-Z]{2}$').hasMatch(state.toUpperCase());
      default:
        return state.isNotEmpty;
    }
  }

  static String? formatPostalCode(String postalCode, String country) {
    switch (country.toUpperCase()) {
      case 'US':
        final cleaned = postalCode.replaceAll(RegExp(r'[^0-9]'), '');
        if (cleaned.length == 9) {
          return '${cleaned.substring(0, 5)}-${cleaned.substring(5)}';
        }
        return cleaned;
      case 'CA':
        final cleaned = postalCode.replaceAll(RegExp(r'[^A-Za-z0-9]'), '');
        if (cleaned.length == 6) {
          return '${cleaned.substring(0, 3)} ${cleaned.substring(3)}';
        }
        return cleaned;
      default:
        return postalCode;
    }
  }
}
