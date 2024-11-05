// packages/core/lib/src/commerce/domain/models/billing_address.dart

class BillingAddress {
  final String id;
  final String firstName;
  final String lastName;
  final String street;
  final String? unit;
  final String city;
  final String state;
  final String postalCode;
  final String country;
  final String? phone;
  final String? email;
  final bool isDefault;
  final AddressType type;
  final String? companyName;
  final Map<String, dynamic>? metadata;

  const BillingAddress({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.street,
    this.unit,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
    this.phone,
    this.email,
    this.isDefault = false,
    this.type = AddressType.billing,
    this.companyName,
    this.metadata,
  });

  String get fullName => '$firstName $lastName';

  String get formattedAddress {
    final parts = [
      street,
      if (unit != null) 'Unit $unit',
      '$city, $state $postalCode',
      country,
    ];
    return parts.join('\n');
  }

  BillingAddress copyWith({
    String? id,
    String? firstName,
    String? lastName,
    String? street,
    String? unit,
    String? city,
    String? state,
    String? postalCode,
    String? country,
    String? phone,
    String? email,
    bool? isDefault,
    AddressType? type,
    String? companyName,
    Map<String, dynamic>? metadata,
  }) {
    return BillingAddress(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      street: street ?? this.street,
      unit: unit ?? this.unit,
      city: city ?? this.city,
      state: state ?? this.state,
      postalCode: postalCode ?? this.postalCode,
      country: country ?? this.country,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      isDefault: isDefault ?? this.isDefault,
      type: type ?? this.type,
      companyName: companyName ?? this.companyName,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'firstName': firstName,
        'lastName': lastName,
        'street': street,
        if (unit != null) 'unit': unit,
        'city': city,
        'state': state,
        'postalCode': postalCode,
        'country': country,
        if (phone != null) 'phone': phone,
        if (email != null) 'email': email,
        'isDefault': isDefault,
        'type': type.toString(),
        if (companyName != null) 'companyName': companyName,
        if (metadata != null) 'metadata': metadata,
      };

  factory BillingAddress.fromJson(Map<String, dynamic> json) => BillingAddress(
        id: json['id'] as String,
        firstName: json['firstName'] as String,
        lastName: json['lastName'] as String,
        street: json['street'] as String,
        unit: json['unit'] as String?,
        city: json['city'] as String,
        state: json['state'] as String,
        postalCode: json['postalCode'] as String,
        country: json['country'] as String,
        phone: json['phone'] as String?,
        email: json['email'] as String?,
        isDefault: json['isDefault'] as bool? ?? false,
        type:
            AddressType.values.firstWhere((e) => e.toString() == json['type']),
        companyName: json['companyName'] as String?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );

  // Validation methods
  bool isValid() {
    return firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        street.isNotEmpty &&
        city.isNotEmpty &&
        state.isNotEmpty &&
        postalCode.isNotEmpty &&
        country.isNotEmpty;
  }

  bool isValidForBilling() {
    return isValid() && phone != null && email != null;
  }

  // Comparison method
  bool isSameAddress(BillingAddress other) {
    return street == other.street &&
        unit == other.unit &&
        city == other.city &&
        state == other.state &&
        postalCode == other.postalCode &&
        country == other.country;
  }
}

enum AddressType { billing, shipping, both }

extension AddressTypeExtension on AddressType {
  String get displayName {
    switch (this) {
      case AddressType.billing:
        return 'Billing Address';
      case AddressType.shipping:
        return 'Shipping Address';
      case AddressType.both:
        return 'Billing & Shipping Address';
    }
  }

  bool get isBillingAddress =>
      this == AddressType.billing || this == AddressType.both;
  bool get isShippingAddress =>
      this == AddressType.shipping || this == AddressType.both;
}

// Address validation utilities
class AddressValidation {
  static bool isValidPostalCode(String postalCode, String country) {
    // Add country-specific postal code validation
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

  static bool isValidPhoneNumber(String phone, String country) {
    // Add country-specific phone number validation
    switch (country.toUpperCase()) {
      case 'US':
      case 'CA':
        return RegExp(r'^\+?1?\d{10}$')
            .hasMatch(phone.replaceAll(RegExp(r'[^0-9]'), ''));
      default:
        return phone.isNotEmpty;
    }
  }

  static bool isValidEmail(String email) {
    return RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(email);
  }

  static String? formatPhoneNumber(String phone, String country) {
    // Add country-specific phone number formatting
    switch (country.toUpperCase()) {
      case 'US':
      case 'CA':
        final digits = phone.replaceAll(RegExp(r'[^0-9]'), '');
        if (digits.length == 10) {
          return '(${digits.substring(0, 3)}) ${digits.substring(3, 6)}-${digits.substring(6)}';
        }
        return phone;
      default:
        return phone;
    }
  }
}
