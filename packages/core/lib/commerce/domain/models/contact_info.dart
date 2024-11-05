class ContactInfo {
  final String email;
  final String phone;
  final String? alternatePhone;
  final String? website;
  final Map<String, String>? socialMedia;
  final String? contactPerson;

  const ContactInfo({
    required this.email,
    required this.phone,
    this.alternatePhone,
    this.website,
    this.socialMedia,
    this.contactPerson,
  });

  Map<String, dynamic> toJson() => {
        'email': email,
        'phone': phone,
        if (alternatePhone != null) 'alternatePhone': alternatePhone,
        if (website != null) 'website': website,
        if (socialMedia != null) 'socialMedia': socialMedia,
        if (contactPerson != null) 'contactPerson': contactPerson,
      };

  factory ContactInfo.fromJson(Map<String, dynamic> json) => ContactInfo(
        email: json['email'] as String,
        phone: json['phone'] as String,
        alternatePhone: json['alternatePhone'] as String?,
        website: json['website'] as String?,
        socialMedia: (json['socialMedia'] as Map<String, dynamic>?)?.map(
          (k, v) => MapEntry(k, v as String),
        ),
        contactPerson: json['contactPerson'] as String?,
      );
}
