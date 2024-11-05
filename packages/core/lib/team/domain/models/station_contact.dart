// packages/core/lib/src/team/domain/models/station_contact.dart
import 'package:core/common/models/address.dart';
import 'package:core/team/domain/models/emergency_contact.dart';

class StationContact {
  final String id;
  final String stationName;
  final String stationNumber;
  final ContactNumbers phoneNumbers;
  final String email;
  final String? website;
  final SocialMediaLinks? socialMedia;
  final List<StationPersonnel> personnel;
  final EmergencyContacts emergencyContacts;
  final DispatchInfo dispatchInfo;
  final Address physicalAddress;
  final List<String> serviceArea;
  final Map<String, dynamic>? metadata;

  const StationContact({
    required this.id,
    required this.stationName,
    required this.stationNumber,
    required this.phoneNumbers,
    required this.email,
    this.website,
    this.socialMedia,
    required this.personnel,
    required this.emergencyContacts,
    required this.dispatchInfo,
    required this.physicalAddress,
    required this.serviceArea,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'stationName': stationName,
        'stationNumber': stationNumber,
        'phoneNumbers': phoneNumbers.toJson(),
        'email': email,
        if (website != null) 'website': website,
        if (socialMedia != null) 'socialMedia': socialMedia!.toJson(),
        'personnel': personnel.map((p) => p.toJson()).toList(),
        'emergencyContacts': emergencyContacts.toJson(),
        'dispatchInfo': dispatchInfo.toJson(),
        'physicalAddress': physicalAddress.toJson(),
        'serviceArea': serviceArea,
        if (metadata != null) 'metadata': metadata,
      };

  factory StationContact.fromJson(Map<String, dynamic> json) => StationContact(
        id: json['id'] as String,
        stationName: json['stationName'] as String,
        stationNumber: json['stationNumber'] as String,
        phoneNumbers: ContactNumbers.fromJson(json['phoneNumbers']),
        email: json['email'] as String,
        website: json['website'] as String?,
        socialMedia: json['socialMedia'] != null
            ? SocialMediaLinks.fromJson(json['socialMedia'])
            : null,
        personnel: (json['personnel'] as List)
            .map((p) => StationPersonnel.fromJson(p))
            .toList(),
        emergencyContacts:
            EmergencyContacts.fromJson(json['emergencyContacts']),
        dispatchInfo: DispatchInfo.fromJson(json['dispatchInfo']),
        physicalAddress: Address.fromJson(json['physicalAddress']),
        serviceArea:
            (json['serviceArea'] as List).map((e) => e as String).toList(),
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

class ContactNumbers {
  final String main;
  final String? emergency;
  final String? fax;
  final Map<String, String> extensions;

  const ContactNumbers({
    required this.main,
    this.emergency,
    this.fax,
    required this.extensions,
  });

  Map<String, dynamic> toJson() => {
        'main': main,
        if (emergency != null) 'emergency': emergency,
        if (fax != null) 'fax': fax,
        'extensions': extensions,
      };

  factory ContactNumbers.fromJson(Map<String, dynamic> json) => ContactNumbers(
        main: json['main'] as String,
        emergency: json['emergency'] as String?,
        fax: json['fax'] as String?,
        extensions: Map<String, String>.from(json['extensions']),
      );
}

class SocialMediaLinks {
  final String? facebook;
  final String? twitter;
  final String? instagram;
  final String? linkedin;
  final Map<String, String>? other;

  const SocialMediaLinks({
    this.facebook,
    this.twitter,
    this.instagram,
    this.linkedin,
    this.other,
  });

  Map<String, dynamic> toJson() => {
        if (facebook != null) 'facebook': facebook,
        if (twitter != null) 'twitter': twitter,
        if (instagram != null) 'instagram': instagram,
        if (linkedin != null) 'linkedin': linkedin,
        if (other != null) 'other': other,
      };

  factory SocialMediaLinks.fromJson(Map<String, dynamic> json) =>
      SocialMediaLinks(
        facebook: json['facebook'] as String?,
        twitter: json['twitter'] as String?,
        instagram: json['instagram'] as String?,
        linkedin: json['linkedin'] as String?,
        other: json['other'] != null
            ? Map<String, String>.from(json['other'])
            : null,
      );
}

class StationPersonnel {
  final String id;
  final String name;
  final String role;
  final String? extension;
  final String? email;
  final String? phone;
  final List<String> shifts;
  final bool isOnDuty;

  const StationPersonnel({
    required this.id,
    required this.name,
    required this.role,
    this.extension,
    this.email,
    this.phone,
    required this.shifts,
    required this.isOnDuty,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'role': role,
        if (extension != null) 'extension': extension,
        if (email != null) 'email': email,
        if (phone != null) 'phone': phone,
        'shifts': shifts,
        'isOnDuty': isOnDuty,
      };

  factory StationPersonnel.fromJson(Map<String, dynamic> json) =>
      StationPersonnel(
        id: json['id'] as String,
        name: json['name'] as String,
        role: json['role'] as String,
        extension: json['extension'] as String?,
        email: json['email'] as String?,
        phone: json['phone'] as String?,
        shifts: (json['shifts'] as List).map((e) => e as String).toList(),
        isOnDuty: json['isOnDuty'] as bool,
      );
}

class EmergencyContacts {
  final List<EmergencyContact> contacts;
  final Map<String, String> emergencyServices;
  final List<String> nearbyHospitals;

  const EmergencyContacts({
    required this.contacts,
    required this.emergencyServices,
    required this.nearbyHospitals,
  });

  Map<String, dynamic> toJson() => {
        'contacts': contacts.map((c) => c.toJson()).toList(),
        'emergencyServices': emergencyServices,
        'nearbyHospitals': nearbyHospitals,
      };

  factory EmergencyContacts.fromJson(Map<String, dynamic> json) =>
      EmergencyContacts(
        contacts: (json['contacts'] as List)
            .map((c) => EmergencyContact.fromJson(c))
            .toList(),
        emergencyServices: Map<String, String>.from(json['emergencyServices']),
        nearbyHospitals:
            (json['nearbyHospitals'] as List).map((e) => e as String).toList(),
      );
}

class DispatchInfo {
  final String centerName;
  final String mainNumber;
  final String emergencyNumber;
  final String? backupNumber;
  final Map<String, String> frequencies;
  final List<String> channels;
  final Map<String, dynamic>? protocols;

  const DispatchInfo({
    required this.centerName,
    required this.mainNumber,
    required this.emergencyNumber,
    this.backupNumber,
    required this.frequencies,
    required this.channels,
    this.protocols,
  });

  Map<String, dynamic> toJson() => {
        'centerName': centerName,
        'mainNumber': mainNumber,
        'emergencyNumber': emergencyNumber,
        if (backupNumber != null) 'backupNumber': backupNumber,
        'frequencies': frequencies,
        'channels': channels,
        if (protocols != null) 'protocols': protocols,
      };

  factory DispatchInfo.fromJson(Map<String, dynamic> json) => DispatchInfo(
        centerName: json['centerName'] as String,
        mainNumber: json['mainNumber'] as String,
        emergencyNumber: json['emergencyNumber'] as String,
        backupNumber: json['backupNumber'] as String?,
        frequencies: Map<String, String>.from(json['frequencies']),
        channels: (json['channels'] as List).map((e) => e as String).toList(),
        protocols: json['protocols'] as Map<String, dynamic>?,
      );
}
