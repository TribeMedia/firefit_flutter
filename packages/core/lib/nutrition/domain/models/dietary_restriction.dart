// packages/core/lib/src/nutrition/domain/models/dietary_restriction.dart
import 'package:flutter/material.dart';

class DietaryRestriction {
  final String id;
  final String name;
  final RestrictionType type;
  final RestrictionSeverity severity;
  final String description;
  final List<String> restrictedIngredients;
  final List<String>? alternativeIngredients;
  final bool isAllergy;
  final bool requiresStrictAvoidance;
  final String? medicalNotes;
  final bool isTeamVisible;
  final List<String>? crossContaminants;
  final EmergencyProtocol? emergencyProtocol;
  final DateTime lastUpdated;
  final String? verifiedBy;
  final Map<String, dynamic>? metadata;

  const DietaryRestriction({
    required this.id,
    required this.name,
    required this.type,
    required this.severity,
    required this.description,
    required this.restrictedIngredients,
    this.alternativeIngredients,
    required this.isAllergy,
    required this.requiresStrictAvoidance,
    this.medicalNotes,
    this.isTeamVisible = true,
    this.crossContaminants,
    this.emergencyProtocol,
    required this.lastUpdated,
    this.verifiedBy,
    this.metadata,
  });

  bool get isLifeThreatening => severity == RestrictionSeverity.lifeThreatening;

  bool get requiresMedicalAttention =>
      severity == RestrictionSeverity.severe ||
      severity == RestrictionSeverity.lifeThreatening;

  bool get hasAlternatives =>
      alternativeIngredients != null && alternativeIngredients!.isNotEmpty;

  DietaryRestriction copyWith({
    String? id,
    String? name,
    RestrictionType? type,
    RestrictionSeverity? severity,
    String? description,
    List<String>? restrictedIngredients,
    List<String>? alternativeIngredients,
    bool? isAllergy,
    bool? requiresStrictAvoidance,
    String? medicalNotes,
    bool? isTeamVisible,
    List<String>? crossContaminants,
    EmergencyProtocol? emergencyProtocol,
    DateTime? lastUpdated,
    String? verifiedBy,
    Map<String, dynamic>? metadata,
  }) {
    return DietaryRestriction(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      severity: severity ?? this.severity,
      description: description ?? this.description,
      restrictedIngredients:
          restrictedIngredients ?? this.restrictedIngredients,
      alternativeIngredients:
          alternativeIngredients ?? this.alternativeIngredients,
      isAllergy: isAllergy ?? this.isAllergy,
      requiresStrictAvoidance:
          requiresStrictAvoidance ?? this.requiresStrictAvoidance,
      medicalNotes: medicalNotes ?? this.medicalNotes,
      isTeamVisible: isTeamVisible ?? this.isTeamVisible,
      crossContaminants: crossContaminants ?? this.crossContaminants,
      emergencyProtocol: emergencyProtocol ?? this.emergencyProtocol,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      verifiedBy: verifiedBy ?? this.verifiedBy,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type.toString(),
        'severity': severity.toString(),
        'description': description,
        'restrictedIngredients': restrictedIngredients,
        if (alternativeIngredients != null)
          'alternativeIngredients': alternativeIngredients,
        'isAllergy': isAllergy,
        'requiresStrictAvoidance': requiresStrictAvoidance,
        if (medicalNotes != null) 'medicalNotes': medicalNotes,
        'isTeamVisible': isTeamVisible,
        if (crossContaminants != null) 'crossContaminants': crossContaminants,
        if (emergencyProtocol != null)
          'emergencyProtocol': emergencyProtocol!.toJson(),
        'lastUpdated': lastUpdated.toIso8601String(),
        if (verifiedBy != null) 'verifiedBy': verifiedBy,
        if (metadata != null) 'metadata': metadata,
      };

  factory DietaryRestriction.fromJson(Map<String, dynamic> json) =>
      DietaryRestriction(
        id: json['id'] as String,
        name: json['name'] as String,
        type: RestrictionType.values
            .firstWhere((e) => e.toString() == json['type']),
        severity: RestrictionSeverity.values
            .firstWhere((e) => e.toString() == json['severity']),
        description: json['description'] as String,
        restrictedIngredients: (json['restrictedIngredients'] as List)
            .map((e) => e as String)
            .toList(),
        alternativeIngredients: (json['alternativeIngredients'] as List?)
            ?.map((e) => e as String)
            .toList(),
        isAllergy: json['isAllergy'] as bool,
        requiresStrictAvoidance: json['requiresStrictAvoidance'] as bool,
        medicalNotes: json['medicalNotes'] as String?,
        isTeamVisible: json['isTeamVisible'] as bool? ?? true,
        crossContaminants: (json['crossContaminants'] as List?)
            ?.map((e) => e as String)
            .toList(),
        emergencyProtocol: json['emergencyProtocol'] != null
            ? EmergencyProtocol.fromJson(json['emergencyProtocol'])
            : null,
        lastUpdated: DateTime.parse(json['lastUpdated'] as String),
        verifiedBy: json['verifiedBy'] as String?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum RestrictionType {
  allergy,
  intolerance,
  religious,
  lifestyle,
  medical,
  preference
}

enum RestrictionSeverity { mild, moderate, severe, lifeThreatening }

class EmergencyProtocol {
  final List<String> symptoms;
  final List<String> immediateActions;
  final List<String> medications;
  final List<String> emergencyContacts;
  final String? hospitalPreference;
  final String? medicationLocation;
  final Map<String, dynamic>? additionalInstructions;

  const EmergencyProtocol({
    required this.symptoms,
    required this.immediateActions,
    required this.medications,
    required this.emergencyContacts,
    this.hospitalPreference,
    this.medicationLocation,
    this.additionalInstructions,
  });

  Map<String, dynamic> toJson() => {
        'symptoms': symptoms,
        'immediateActions': immediateActions,
        'medications': medications,
        'emergencyContacts': emergencyContacts,
        if (hospitalPreference != null)
          'hospitalPreference': hospitalPreference,
        if (medicationLocation != null)
          'medicationLocation': medicationLocation,
        if (additionalInstructions != null)
          'additionalInstructions': additionalInstructions,
      };

  factory EmergencyProtocol.fromJson(Map<String, dynamic> json) =>
      EmergencyProtocol(
        symptoms: (json['symptoms'] as List).map((e) => e as String).toList(),
        immediateActions:
            (json['immediateActions'] as List).map((e) => e as String).toList(),
        medications:
            (json['medications'] as List).map((e) => e as String).toList(),
        emergencyContacts: (json['emergencyContacts'] as List)
            .map((e) => e as String)
            .toList(),
        hospitalPreference: json['hospitalPreference'] as String?,
        medicationLocation: json['medicationLocation'] as String?,
        additionalInstructions:
            json['additionalInstructions'] as Map<String, dynamic>?,
      );
}

extension RestrictionTypeExtension on RestrictionType {
  String get displayName {
    switch (this) {
      case RestrictionType.allergy:
        return 'Allergy';
      case RestrictionType.intolerance:
        return 'Intolerance';
      case RestrictionType.religious:
        return 'Religious';
      case RestrictionType.lifestyle:
        return 'Lifestyle';
      case RestrictionType.medical:
        return 'Medical';
      case RestrictionType.preference:
        return 'Preference';
    }
  }

  IconData get icon {
    switch (this) {
      case RestrictionType.allergy:
        return Icons.warning_amber;
      case RestrictionType.intolerance:
        return Icons.no_food;
      case RestrictionType.religious:
        return Icons.church;
      case RestrictionType.lifestyle:
        return Icons.person;
      case RestrictionType.medical:
        return Icons.medical_services;
      case RestrictionType.preference:
        return Icons.thumb_down;
    }
  }
}

extension RestrictionSeverityExtension on RestrictionSeverity {
  String get displayName {
    switch (this) {
      case RestrictionSeverity.mild:
        return 'Mild';
      case RestrictionSeverity.moderate:
        return 'Moderate';
      case RestrictionSeverity.severe:
        return 'Severe';
      case RestrictionSeverity.lifeThreatening:
        return 'Life-Threatening';
    }
  }

  Color get color {
    switch (this) {
      case RestrictionSeverity.mild:
        return Colors.yellow;
      case RestrictionSeverity.moderate:
        return Colors.orange;
      case RestrictionSeverity.severe:
        return Colors.red;
      case RestrictionSeverity.lifeThreatening:
        return Colors.purple;
    }
  }
}
