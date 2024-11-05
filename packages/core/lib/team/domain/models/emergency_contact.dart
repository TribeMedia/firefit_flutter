// packages/core/lib/src/team/domain/models/emergency_contact.dart
import 'package:core/common/models/address.dart';

class EmergencyContact {
  final String id;
  final String name;
  final String relationship;
  final ContactInfo contactInfo;
  final bool isPrimaryContact;
  final List<String> notificationPreferences;
  final MedicalInfo? medicalInfo;
  final List<String>? authorizedActions;
  final bool hasAccessToMedicalRecords;
  final String? notes;
  final DateTime lastVerified;
  final Map<String, dynamic>? metadata;

  const EmergencyContact({
    required this.id,
    required this.name,
    required this.relationship,
    required this.contactInfo,
    required this.isPrimaryContact,
    required this.notificationPreferences,
    this.medicalInfo,
    this.authorizedActions,
    required this.hasAccessToMedicalRecords,
    this.notes,
    required this.lastVerified,
    this.metadata,
  });

  EmergencyContact copyWith({
    String? id,
    String? name,
    String? relationship,
    ContactInfo? contactInfo,
    bool? isPrimaryContact,
    List<String>? notificationPreferences,
    MedicalInfo? medicalInfo,
    List<String>? authorizedActions,
    bool? hasAccessToMedicalRecords,
    String? notes,
    DateTime? lastVerified,
    Map<String, dynamic>? metadata,
  }) {
    return EmergencyContact(
      id: id ?? this.id,
      name: name ?? this.name,
      relationship: relationship ?? this.relationship,
      contactInfo: contactInfo ?? this.contactInfo,
      isPrimaryContact: isPrimaryContact ?? this.isPrimaryContact,
      notificationPreferences:
          notificationPreferences ?? this.notificationPreferences,
      medicalInfo: medicalInfo ?? this.medicalInfo,
      authorizedActions: authorizedActions ?? this.authorizedActions,
      hasAccessToMedicalRecords:
          hasAccessToMedicalRecords ?? this.hasAccessToMedicalRecords,
      notes: notes ?? this.notes,
      lastVerified: lastVerified ?? this.lastVerified,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'relationship': relationship,
        'contactInfo': contactInfo.toJson(),
        'isPrimaryContact': isPrimaryContact,
        'notificationPreferences': notificationPreferences,
        if (medicalInfo != null) 'medicalInfo': medicalInfo!.toJson(),
        if (authorizedActions != null) 'authorizedActions': authorizedActions,
        'hasAccessToMedicalRecords': hasAccessToMedicalRecords,
        if (notes != null) 'notes': notes,
        'lastVerified': lastVerified.toIso8601String(),
        if (metadata != null) 'metadata': metadata,
      };

  factory EmergencyContact.fromJson(Map<String, dynamic> json) =>
      EmergencyContact(
        id: json['id'] as String,
        name: json['name'] as String,
        relationship: json['relationship'] as String,
        contactInfo: ContactInfo.fromJson(json['contactInfo']),
        isPrimaryContact: json['isPrimaryContact'] as bool,
        notificationPreferences: (json['notificationPreferences'] as List)
            .map((e) => e as String)
            .toList(),
        medicalInfo: json['medicalInfo'] != null
            ? MedicalInfo.fromJson(json['medicalInfo'])
            : null,
        authorizedActions: (json['authorizedActions'] as List?)
            ?.map((e) => e as String)
            .toList(),
        hasAccessToMedicalRecords: json['hasAccessToMedicalRecords'] as bool,
        notes: json['notes'] as String?,
        lastVerified: DateTime.parse(json['lastVerified'] as String),
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

class ContactInfo {
  final String primaryPhone;
  final String? alternatePhone;
  final String email;
  final String? workPhone;
  final Address? address;
  final String? bestTimeToContact;
  final List<String> preferredContactMethods;

  const ContactInfo({
    required this.primaryPhone,
    this.alternatePhone,
    required this.email,
    this.workPhone,
    this.address,
    this.bestTimeToContact,
    required this.preferredContactMethods,
  });

  Map<String, dynamic> toJson() => {
        'primaryPhone': primaryPhone,
        if (alternatePhone != null) 'alternatePhone': alternatePhone,
        'email': email,
        if (workPhone != null) 'workPhone': workPhone,
        if (address != null) 'address': address!.toJson(),
        if (bestTimeToContact != null) 'bestTimeToContact': bestTimeToContact,
        'preferredContactMethods': preferredContactMethods,
      };

  factory ContactInfo.fromJson(Map<String, dynamic> json) => ContactInfo(
        primaryPhone: json['primaryPhone'] as String,
        alternatePhone: json['alternatePhone'] as String?,
        email: json['email'] as String,
        workPhone: json['workPhone'] as String?,
        address:
            json['address'] != null ? Address.fromJson(json['address']) : null,
        bestTimeToContact: json['bestTimeToContact'] as String?,
        preferredContactMethods: (json['preferredContactMethods'] as List)
            .map((e) => e as String)
            .toList(),
      );
}

class MedicalInfo {
  final List<String> knownAllergies;
  final List<String> medications;
  final String? bloodType;
  final List<String> medicalConditions;
  final String? primaryPhysician;
  final String? preferredHospital;
  final List<String> treatmentPreferences;
  final bool hasMedicalPowerOfAttorney;

  const MedicalInfo({
    required this.knownAllergies,
    required this.medications,
    this.bloodType,
    required this.medicalConditions,
    this.primaryPhysician,
    this.preferredHospital,
    required this.treatmentPreferences,
    required this.hasMedicalPowerOfAttorney,
  });

  Map<String, dynamic> toJson() => {
        'knownAllergies': knownAllergies,
        'medications': medications,
        if (bloodType != null) 'bloodType': bloodType,
        'medicalConditions': medicalConditions,
        if (primaryPhysician != null) 'primaryPhysician': primaryPhysician,
        if (preferredHospital != null) 'preferredHospital': preferredHospital,
        'treatmentPreferences': treatmentPreferences,
        'hasMedicalPowerOfAttorney': hasMedicalPowerOfAttorney,
      };

  factory MedicalInfo.fromJson(Map<String, dynamic> json) => MedicalInfo(
        knownAllergies:
            (json['knownAllergies'] as List).map((e) => e as String).toList(),
        medications:
            (json['medications'] as List).map((e) => e as String).toList(),
        bloodType: json['bloodType'] as String?,
        medicalConditions: (json['medicalConditions'] as List)
            .map((e) => e as String)
            .toList(),
        primaryPhysician: json['primaryPhysician'] as String?,
        preferredHospital: json['preferredHospital'] as String?,
        treatmentPreferences: (json['treatmentPreferences'] as List)
            .map((e) => e as String)
            .toList(),
        hasMedicalPowerOfAttorney: json['hasMedicalPowerOfAttorney'] as bool,
      );
}
