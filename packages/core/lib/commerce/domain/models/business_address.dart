class BillingAddress {
  final String street;
  final String? unit;
  final String city;
  final String state;
  final String postalCode;
  final String country;
  final String? phone;

  const BillingAddress({
    required this.street,
    this.unit,
    required this.city,
    required this.state,
    required this.postalCode,
    required this.country,
    this.phone,
  });

  Map<String, dynamic> toJson() => {
        'street': street,
        if (unit != null) 'unit': unit,
        'city': city,
        'state': state,
        'postalCode': postalCode,
        'country': country,
        if (phone != null) 'phone': phone,
      };

  factory BillingAddress.fromJson(Map<String, dynamic> json) => BillingAddress(
        street: json['street'] as String,
        unit: json['unit'] as String?,
        city: json['city'] as String,
        state: json['state'] as String,
        postalCode: json['postalCode'] as String,
        country: json['country'] as String,
        phone: json['phone'] as String?,
      );

  BillingAddress copyWith({
    String? street,
    String? unit,
    String? city,
    String? state,
    String? postalCode,
    String? country,
    String? phone,
  }) {
    return BillingAddress(
      street: street ?? this.street,
      unit: unit ?? this.unit,
      city: city ?? this.city,
      state: state ?? this.state,
      postalCode: postalCode ?? this.postalCode,
      country: country ?? this.country,
      phone: phone ?? this.phone,
    );
  }

  @override
  String toString() {
    final parts = [
      street,
      if (unit != null) 'Unit $unit',
      '$city, $state $postalCode',
      country,
      if (phone != null) 'Phone: $phone',
    ];
    return parts.join('\n');
  }
}
