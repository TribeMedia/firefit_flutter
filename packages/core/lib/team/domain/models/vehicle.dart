// packages/core/lib/src/equipment/domain/models/vehicle.dart
import 'package:core/common/models/location.dart';

class Vehicle {
  final String id;
  final String name;
  final String type;
  final String designation;
  final String make;
  final String model;
  final String year;
  final String vin;
  final VehicleStatus status;
  final List<String> capabilities;
  final Map<String, dynamic>? specifications;
  final DateTime lastInspection;
  final Map<String, dynamic>? metadata;

  const Vehicle({
    required this.id,
    required this.name,
    required this.type,
    required this.designation,
    required this.make,
    required this.model,
    required this.year,
    required this.vin,
    required this.status,
    required this.capabilities,
    this.specifications,
    required this.lastInspection,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type,
        'designation': designation,
        'make': make,
        'model': model,
        'year': year,
        'vin': vin,
        'status': status.toString(),
        'capabilities': capabilities,
        if (specifications != null) 'specifications': specifications,
        'lastInspection': lastInspection.toIso8601String(),
        if (metadata != null) 'metadata': metadata,
      };

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        id: json['id'] as String,
        name: json['name'] as String,
        type: json['type'] as String,
        designation: json['designation'] as String,
        make: json['make'] as String,
        model: json['model'] as String,
        year: json['year'] as String,
        vin: json['vin'] as String,
        status: VehicleStatus.values
            .firstWhere((e) => e.toString() == json['status']),
        capabilities:
            (json['capabilities'] as List).map((e) => e as String).toList(),
        specifications: json['specifications'] as Map<String, dynamic>?,
        lastInspection: DateTime.parse(json['lastInspection'] as String),
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum VehicleStatus {
  active,
  inService,
  maintenance,
  outOfService,
  reserve,
  training
}

// packages/core/lib/src/equipment/domain/models/equipment.dart

class Equipment {
  final String id;
  final String name;
  final String category;
  final String model;
  final String serialNumber;
  final EquipmentStatus status;
  final DateTime purchaseDate;
  final DateTime? expirationDate;
  final List<String> certifications;
  final List<String> authorizedUsers;
  final Location location;
  final Map<String, dynamic>? specifications;
  final Map<String, dynamic>? metadata;

  const Equipment({
    required this.id,
    required this.name,
    required this.category,
    required this.model,
    required this.serialNumber,
    required this.status,
    required this.purchaseDate,
    this.expirationDate,
    required this.certifications,
    required this.authorizedUsers,
    required this.location,
    this.specifications,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'category': category,
        'model': model,
        'serialNumber': serialNumber,
        'status': status.toString(),
        'purchaseDate': purchaseDate.toIso8601String(),
        if (expirationDate != null)
          'expirationDate': expirationDate!.toIso8601String(),
        'certifications': certifications,
        'authorizedUsers': authorizedUsers,
        'location': location.toJson(),
        if (specifications != null) 'specifications': specifications,
        if (metadata != null) 'metadata': metadata,
      };

  factory Equipment.fromJson(Map<String, dynamic> json) => Equipment(
        id: json['id'] as String,
        name: json['name'] as String,
        category: json['category'] as String,
        model: json['model'] as String,
        serialNumber: json['serialNumber'] as String,
        status: EquipmentStatus.values
            .firstWhere((e) => e.toString() == json['status']),
        purchaseDate: DateTime.parse(json['purchaseDate'] as String),
        expirationDate: json['expirationDate'] != null
            ? DateTime.parse(json['expirationDate'] as String)
            : null,
        certifications:
            (json['certifications'] as List).map((e) => e as String).toList(),
        authorizedUsers:
            (json['authorizedUsers'] as List).map((e) => e as String).toList(),
        location: Location.fromJson(json['location']),
        specifications: json['specifications'] as Map<String, dynamic>?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum EquipmentStatus {
  inService,
  outOfService,
  maintenance,
  calibration,
  expired,
  lost
}

// packages/core/lib/src/equipment/domain/models/specialized_equipment.dart

class SpecializedEquipment extends Equipment {
  final List<String> specialCertifications;
  final List<String> hazardousConditions;
  final List<String> compatibleEquipment;
  final Map<String, dynamic>? specializedMetadata;

  SpecializedEquipment({
    required super.id,
    required super.name,
    required super.category,
    required super.model,
    required super.serialNumber,
    required super.status,
    required super.purchaseDate,
    super.expirationDate,
    required super.certifications,
    required super.authorizedUsers,
    required super.location,
    super.specifications,
    super.metadata,
    required this.specialCertifications,
    required this.hazardousConditions,
    required this.compatibleEquipment,
    this.specializedMetadata,
  });

  @override
  Map<String, dynamic> toJson() => {
        ...super.toJson(),
        'specialCertifications': specialCertifications,
        'hazardousConditions': hazardousConditions,
        'compatibleEquipment': compatibleEquipment,
        if (specializedMetadata != null)
          'specializedMetadata': specializedMetadata,
      };

  factory SpecializedEquipment.fromJson(Map<String, dynamic> json) =>
      SpecializedEquipment(
        id: json['id'] as String,
        name: json['name'] as String,
        category: json['category'] as String,
        model: json['model'] as String,
        serialNumber: json['serialNumber'] as String,
        status: EquipmentStatus.values
            .firstWhere((e) => e.toString() == json['status']),
        purchaseDate: DateTime.parse(json['purchaseDate'] as String),
        expirationDate: json['expirationDate'] != null
            ? DateTime.parse(json['expirationDate'] as String)
            : null,
        certifications:
            (json['certifications'] as List).map((e) => e as String).toList(),
        authorizedUsers:
            (json['authorizedUsers'] as List).map((e) => e as String).toList(),
        location: Location.fromJson(json['location']),
        specifications: json['specifications'] as Map<String, dynamic>?,
        metadata: json['metadata'] as Map<String, dynamic>?,
        specialCertifications: (json['specialCertifications'] as List)
            .map((e) => e as String)
            .toList(),
        hazardousConditions: (json['hazardousConditions'] as List)
            .map((e) => e as String)
            .toList(),
        compatibleEquipment: (json['compatibleEquipment'] as List)
            .map((e) => e as String)
            .toList(),
        specializedMetadata:
            json['specializedMetadata'] as Map<String, dynamic>?,
      );
}
