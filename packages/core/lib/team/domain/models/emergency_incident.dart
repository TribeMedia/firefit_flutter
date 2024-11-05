// packages/core/lib/src/emergency/domain/models/emergency_incident.dart (continued)
import 'package:core/common/models/location.dart';

class EmergencyIncident {
  final String id;
  final IncidentType type;
  final DateTime timestamp;
  final Location location;
  final String description;
  final IncidentStatus status;
  final List<String> respondingUnits;
  final List<String> assignedPersonnel;
  final List<String> equipment;
  final IncidentPriority priority;
  final Map<String, dynamic>? metadata;

  const EmergencyIncident({
    required this.id,
    required this.type,
    required this.timestamp,
    required this.location,
    required this.description,
    required this.status,
    required this.respondingUnits,
    required this.assignedPersonnel,
    required this.equipment,
    required this.priority,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type.toString(),
        'timestamp': timestamp.toIso8601String(),
        'location': location.toJson(),
        'description': description,
        'status': status.toString(),
        'respondingUnits': respondingUnits,
        'assignedPersonnel': assignedPersonnel,
        'equipment': equipment,
        'priority': priority.toString(),
        if (metadata != null) 'metadata': metadata,
      };

  factory EmergencyIncident.fromJson(Map<String, dynamic> json) =>
      EmergencyIncident(
        id: json['id'] as String,
        type:
            IncidentType.values.firstWhere((e) => e.toString() == json['type']),
        timestamp: DateTime.parse(json['timestamp'] as String),
        location: Location.fromJson(json['location']),
        description: json['description'] as String,
        status: IncidentStatus.values
            .firstWhere((e) => e.toString() == json['status']),
        respondingUnits:
            (json['respondingUnits'] as List).map((e) => e as String).toList(),
        assignedPersonnel: (json['assignedPersonnel'] as List)
            .map((e) => e as String)
            .toList(),
        equipment: (json['equipment'] as List).map((e) => e as String).toList(),
        priority: IncidentPriority.values
            .firstWhere((e) => e.toString() == json['priority']),
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum IncidentType {
  fire,
  medical,
  rescue,
  hazmat,
  naturalDisaster,
  vehicleAccident,
  specialOps
}

enum IncidentStatus {
  reported,
  dispatched,
  enRoute,
  onScene,
  inProgress,
  contained,
  cleared,
  completed
}

enum IncidentPriority { low, medium, high, critical, allHands }

class ContactPerson {
  final String id;
  final String name;
  final String role;
  final String phone;
  final String email;
  final String? extension;
  final List<String> availabilityHours;
  final bool isOnDuty;

  const ContactPerson({
    required this.id,
    required this.name,
    required this.role,
    required this.phone,
    required this.email,
    this.extension,
    required this.availabilityHours,
    required this.isOnDuty,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'role': role,
        'phone': phone,
        'email': email,
        if (extension != null) 'extension': extension,
        'availabilityHours': availabilityHours,
        'isOnDuty': isOnDuty,
      };

  factory ContactPerson.fromJson(Map<String, dynamic> json) => ContactPerson(
        id: json['id'] as String,
        name: json['name'] as String,
        role: json['role'] as String,
        phone: json['phone'] as String,
        email: json['email'] as String,
        extension: json['extension'] as String?,
        availabilityHours: (json['availabilityHours'] as List)
            .map((e) => e as String)
            .toList(),
        isOnDuty: json['isOnDuty'] as bool,
      );
}

class DispatchContact {
  final String centerName;
  final String mainNumber;
  final String emergencyNumber;
  final String? backupNumber;
  final String email;
  final Map<String, String> frequencies;

  const DispatchContact({
    required this.centerName,
    required this.mainNumber,
    required this.emergencyNumber,
    this.backupNumber,
    required this.email,
    required this.frequencies,
  });

  Map<String, dynamic> toJson() => {
        'centerName': centerName,
        'mainNumber': mainNumber,
        'emergencyNumber': emergencyNumber,
        if (backupNumber != null) 'backupNumber': backupNumber,
        'email': email,
        'frequencies': frequencies,
      };

  factory DispatchContact.fromJson(Map<String, dynamic> json) =>
      DispatchContact(
        centerName: json['centerName'] as String,
        mainNumber: json['mainNumber'] as String,
        emergencyNumber: json['emergencyNumber'] as String,
        backupNumber: json['backupNumber'] as String?,
        email: json['email'] as String,
        frequencies: Map<String, String>.from(json['frequencies']),
      );
}
