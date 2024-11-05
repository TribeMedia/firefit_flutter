import 'package:core/common/models/location.dart';
import 'package:core/team/domain/models/shift_schedule.dart';
import 'package:core/team/domain/models/station_contact.dart';
import 'package:core/team/domain/models/emergency_incident.dart';
import 'package:core/team/domain/models/vehicle.dart';
import 'package:core/common/models/time_of_day.dart';
import 'package:core/team/domain/models/room.dart';

class Station {
  final String id;
  final String name;
  final String number;
  final Location location;
  final List<String> activeMembers;
  final StationStatus status;
  final StationEquipment equipment;
  final StationSchedule schedule;
  final StationFacilities facilities;
  final StationContact contact;
  final Map<String, dynamic>? metadata;

  const Station({
    required this.id,
    required this.name,
    required this.number,
    required this.location,
    required this.activeMembers,
    required this.status,
    required this.equipment,
    required this.schedule,
    required this.facilities,
    required this.contact,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'number': number,
        'location': location.toJson(),
        'activeMembers': activeMembers,
        'status': status.toJson(),
        'equipment': equipment.toJson(),
        'schedule': schedule.toJson(),
        'facilities': facilities.toJson(),
        'contact': contact.toJson(),
        if (metadata != null) 'metadata': metadata,
      };

  factory Station.fromJson(Map<String, dynamic> json) => Station(
        id: json['id'] as String,
        name: json['name'] as String,
        number: json['number'] as String,
        location: Location.fromJson(json['location']),
        activeMembers:
            (json['activeMembers'] as List).map((e) => e as String).toList(),
        status: StationStatus.fromJson(json['status']),
        equipment: StationEquipment.fromJson(json['equipment']),
        schedule: StationSchedule.fromJson(json['schedule']),
        facilities: StationFacilities.fromJson(json['facilities']),
        contact: StationContact.fromJson(json['contact']),
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

class StationStatus {
  final bool isOperational;
  final List<String> onDutyShift;
  final int currentCrewCount;
  final List<String> availableUnits;
  final List<EmergencyIncident>? activeIncidents;
  final StationAlertLevel alertLevel;
  final DateTime lastUpdated;

  const StationStatus({
    required this.isOperational,
    required this.onDutyShift,
    required this.currentCrewCount,
    required this.availableUnits,
    this.activeIncidents,
    required this.alertLevel,
    required this.lastUpdated,
  });

  Map<String, dynamic> toJson() => {
        'isOperational': isOperational,
        'onDutyShift': onDutyShift,
        'currentCrewCount': currentCrewCount,
        'availableUnits': availableUnits,
        if (activeIncidents != null)
          'activeIncidents': activeIncidents!.map((e) => e.toJson()).toList(),
        'alertLevel': alertLevel.toString(),
        'lastUpdated': lastUpdated.toIso8601String(),
      };

  factory StationStatus.fromJson(Map<String, dynamic> json) => StationStatus(
        isOperational: json['isOperational'] as bool,
        onDutyShift:
            (json['onDutyShift'] as List).map((e) => e as String).toList(),
        currentCrewCount: json['currentCrewCount'] as int,
        availableUnits:
            (json['availableUnits'] as List).map((e) => e as String).toList(),
        activeIncidents: json['activeIncidents'] != null
            ? (json['activeIncidents'] as List)
                .map((e) => EmergencyIncident.fromJson(e))
                .toList()
            : null,
        alertLevel: StationAlertLevel.values
            .firstWhere((e) => e.toString() == json['alertLevel']),
        lastUpdated: DateTime.parse(json['lastUpdated'] as String),
      );
}

class StationEquipment {
  final List<Vehicle> vehicles;
  final List<Equipment> equipment;
  final List<SpecializedEquipment> specializedEquipment;
  final DateTime lastInventoryCheck;
  final String? maintenanceNotes;

  const StationEquipment({
    required this.vehicles,
    required this.equipment,
    required this.specializedEquipment,
    required this.lastInventoryCheck,
    this.maintenanceNotes,
  });

  Map<String, dynamic> toJson() => {
        'vehicles': vehicles.map((v) => v.toJson()).toList(),
        'equipment': equipment.map((e) => e.toJson()).toList(),
        'specializedEquipment':
            specializedEquipment.map((e) => e.toJson()).toList(),
        'lastInventoryCheck': lastInventoryCheck.toIso8601String(),
        if (maintenanceNotes != null) 'maintenanceNotes': maintenanceNotes,
      };

  factory StationEquipment.fromJson(Map<String, dynamic> json) =>
      StationEquipment(
        vehicles:
            (json['vehicles'] as List).map((v) => Vehicle.fromJson(v)).toList(),
        equipment: (json['equipment'] as List)
            .map((e) => Equipment.fromJson(e))
            .toList(),
        specializedEquipment: (json['specializedEquipment'] as List)
            .map((e) => SpecializedEquipment.fromJson(e))
            .toList(),
        lastInventoryCheck:
            DateTime.parse(json['lastInventoryCheck'] as String),
        maintenanceNotes: json['maintenanceNotes'] as String?,
      );
}

class StationSchedule {
  final Map<String, List<ShiftAssignment>> weeklySchedule;
  final Map<String, List<TimeOfDay>> mealTimes;

  const StationSchedule({
    required this.weeklySchedule,
    required this.mealTimes,
  });

  Map<String, dynamic> toJson() => {
        'weeklySchedule': weeklySchedule.map(
          (k, v) => MapEntry(k, v.map((e) => e.toJson()).toList()),
        ),
        'mealTimes': mealTimes.map(
          (k, v) => MapEntry(k, v.map((t) => t.toJson()).toList()),
        ),
      };

  factory StationSchedule.fromJson(Map<String, dynamic> json) =>
      StationSchedule(
        weeklySchedule: (json['weeklySchedule'] as Map<String, dynamic>).map(
          (k, v) => MapEntry(
            k,
            (v as List).map((e) => ShiftAssignment.fromJson(e)).toList(),
          ),
        ),
        mealTimes: (json['mealTimes'] as Map<String, dynamic>).map(
          (k, v) => MapEntry(
            k,
            (v as List).map((t) => TimeOfDay.fromJson(t)).toList(),
          ),
        ),
      );
}

class StationFacilities {
  final KitchenFacilities kitchen;
  final List<Room> rooms;

  const StationFacilities({
    required this.kitchen,
    required this.rooms,
  });

  Map<String, dynamic> toJson() => {
        'kitchen': kitchen.toJson(),
        'rooms': rooms.map((r) => r.toJson()).toList(),
      };

  factory StationFacilities.fromJson(Map<String, dynamic> json) =>
      StationFacilities(
        kitchen: KitchenFacilities.fromJson(json['kitchen']),
        rooms: (json['rooms'] as List).map((r) => Room.fromJson(r)).toList(),
      );
}

class KitchenFacilities {
  final List<String> cookware;
  final List<String> utensils;
  final List<String> specialEquipment;
  final bool hasCommercialGrade;
  final DateTime lastInspection;

  const KitchenFacilities({
    required this.cookware,
    required this.utensils,
    required this.specialEquipment,
    required this.hasCommercialGrade,
    required this.lastInspection,
  });

  Map<String, dynamic> toJson() => {
        'cookware': cookware,
        'utensils': utensils,
        'specialEquipment': specialEquipment,
        'hasCommercialGrade': hasCommercialGrade,
        'lastInspection': lastInspection.toIso8601String(),
      };

  factory KitchenFacilities.fromJson(Map<String, dynamic> json) =>
      KitchenFacilities(
        cookware: (json['cookware'] as List).map((e) => e as String).toList(),
        utensils: (json['utensils'] as List).map((e) => e as String).toList(),
        specialEquipment:
            (json['specialEquipment'] as List).map((e) => e as String).toList(),
        hasCommercialGrade: json['hasCommercialGrade'] as bool,
        lastInspection: DateTime.parse(json['lastInspection'] as String),
      );
}

enum StationAlertLevel { normal, elevated, high, critical, emergency }

// Add other necessary supporting classes (Vehicle, Equipment, etc.) as needed
