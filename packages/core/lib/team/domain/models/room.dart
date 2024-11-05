// packages/core/lib/src/facilities/domain/models/room.dart
import 'package:flutter/material.dart';

class Room {
  final String id;
  final String name;
  final RoomType type;
  final int capacity;
  final double squareFootage;
  final List<String> amenities;
  final RoomStatus status;
  final List<String>? assignedMembers;
  final RoomEquipment equipment;
  final CleaningSchedule cleaningSchedule;
  final EnvironmentalControls environmentalControls;
  final List<String>? authorizedAccess;
  final String? notes;
  final Map<String, dynamic>? metadata;

  const Room({
    required this.id,
    required this.name,
    required this.type,
    required this.capacity,
    required this.squareFootage,
    required this.amenities,
    required this.status,
    this.assignedMembers,
    required this.equipment,
    required this.cleaningSchedule,
    required this.environmentalControls,
    this.authorizedAccess,
    this.notes,
    this.metadata,
  });

  bool get isAvailable => status == RoomStatus.available;
  bool get needsCleaning => cleaningSchedule.isOverdue;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'type': type.toString(),
        'capacity': capacity,
        'squareFootage': squareFootage,
        'amenities': amenities,
        'status': status.toString(),
        if (assignedMembers != null) 'assignedMembers': assignedMembers,
        'equipment': equipment.toJson(),
        'cleaningSchedule': cleaningSchedule.toJson(),
        'environmentalControls': environmentalControls.toJson(),
        if (authorizedAccess != null) 'authorizedAccess': authorizedAccess,
        if (notes != null) 'notes': notes,
        if (metadata != null) 'metadata': metadata,
      };

  factory Room.fromJson(Map<String, dynamic> json) => Room(
        id: json['id'] as String,
        name: json['name'] as String,
        type: RoomType.values.firstWhere((e) => e.toString() == json['type']),
        capacity: json['capacity'] as int,
        squareFootage: (json['squareFootage'] as num).toDouble(),
        amenities: (json['amenities'] as List).map((e) => e as String).toList(),
        status:
            RoomStatus.values.firstWhere((e) => e.toString() == json['status']),
        assignedMembers: (json['assignedMembers'] as List?)
            ?.map((e) => e as String)
            .toList(),
        equipment: RoomEquipment.fromJson(json['equipment']),
        cleaningSchedule: CleaningSchedule.fromJson(json['cleaningSchedule']),
        environmentalControls:
            EnvironmentalControls.fromJson(json['environmentalControls']),
        authorizedAccess: (json['authorizedAccess'] as List?)
            ?.map((e) => e as String)
            .toList(),
        notes: json['notes'] as String?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum RoomType {
  dormitory,
  kitchen,
  commonArea,
  gym,
  office,
  storage,
  bathroom,
  laundry,
  meetingRoom,
  trainingRoom,
  equipment
}

enum RoomStatus {
  available,
  occupied,
  maintenance,
  cleaning,
  outOfService,
  reserved
}

class RoomEquipment {
  final List<String> furniture;
  final List<String> electronics;
  final List<String> fixtures;
  final List<String> specializedEquipment;

  const RoomEquipment({
    required this.furniture,
    required this.electronics,
    required this.fixtures,
    required this.specializedEquipment,
  });

  Map<String, dynamic> toJson() => {
        'furniture': furniture,
        'electronics': electronics,
        'fixtures': fixtures,
        'specializedEquipment': specializedEquipment,
      };

  factory RoomEquipment.fromJson(Map<String, dynamic> json) => RoomEquipment(
        furniture: (json['furniture'] as List).map((e) => e as String).toList(),
        electronics:
            (json['electronics'] as List).map((e) => e as String).toList(),
        fixtures: (json['fixtures'] as List).map((e) => e as String).toList(),
        specializedEquipment: (json['specializedEquipment'] as List)
            .map((e) => e as String)
            .toList(),
      );
}

class CleaningSchedule {
  final DateTime lastCleaned;
  final Duration cleaningInterval;
  final List<String> cleaningTasks;
  final Map<String, DateTime> taskLastCompleted;
  final String? assignedCleaner;

  const CleaningSchedule({
    required this.lastCleaned,
    required this.cleaningInterval,
    required this.cleaningTasks,
    required this.taskLastCompleted,
    this.assignedCleaner,
  });

  bool get isOverdue =>
      DateTime.now().difference(lastCleaned) > cleaningInterval;

  Map<String, dynamic> toJson() => {
        'lastCleaned': lastCleaned.toIso8601String(),
        'cleaningInterval': cleaningInterval.inMinutes,
        'cleaningTasks': cleaningTasks,
        'taskLastCompleted': taskLastCompleted.map(
          (k, v) => MapEntry(k, v.toIso8601String()),
        ),
        if (assignedCleaner != null) 'assignedCleaner': assignedCleaner,
      };

  factory CleaningSchedule.fromJson(Map<String, dynamic> json) =>
      CleaningSchedule(
        lastCleaned: DateTime.parse(json['lastCleaned'] as String),
        cleaningInterval: Duration(minutes: json['cleaningInterval'] as int),
        cleaningTasks:
            (json['cleaningTasks'] as List).map((e) => e as String).toList(),
        taskLastCompleted:
            (json['taskLastCompleted'] as Map<String, dynamic>).map(
          (k, v) => MapEntry(k, DateTime.parse(v as String)),
        ),
        assignedCleaner: json['assignedCleaner'] as String?,
      );
}

class EnvironmentalControls {
  final double targetTemperature;
  final double currentTemperature;
  final double humidity;
  final int lightLevel;
  final bool hasAutomation;
  final Map<String, dynamic>? automationSchedule;

  const EnvironmentalControls({
    required this.targetTemperature,
    required this.currentTemperature,
    required this.humidity,
    required this.lightLevel,
    required this.hasAutomation,
    this.automationSchedule,
  });

  Map<String, dynamic> toJson() => {
        'targetTemperature': targetTemperature,
        'currentTemperature': currentTemperature,
        'humidity': humidity,
        'lightLevel': lightLevel,
        'hasAutomation': hasAutomation,
        if (automationSchedule != null)
          'automationSchedule': automationSchedule,
      };

  factory EnvironmentalControls.fromJson(Map<String, dynamic> json) =>
      EnvironmentalControls(
        targetTemperature: (json['targetTemperature'] as num).toDouble(),
        currentTemperature: (json['currentTemperature'] as num).toDouble(),
        humidity: (json['humidity'] as num).toDouble(),
        lightLevel: json['lightLevel'] as int,
        hasAutomation: json['hasAutomation'] as bool,
        automationSchedule: json['automationSchedule'] as Map<String, dynamic>?,
      );
}

extension RoomTypeExtension on RoomType {
  String get displayName {
    switch (this) {
      case RoomType.dormitory:
        return 'Dormitory';
      case RoomType.kitchen:
        return 'Kitchen';
      case RoomType.commonArea:
        return 'Common Area';
      case RoomType.gym:
        return 'Gym';
      case RoomType.office:
        return 'Office';
      case RoomType.storage:
        return 'Storage';
      case RoomType.bathroom:
        return 'Bathroom';
      case RoomType.laundry:
        return 'Laundry';
      case RoomType.meetingRoom:
        return 'Meeting Room';
      case RoomType.trainingRoom:
        return 'Training Room';
      case RoomType.equipment:
        return 'Equipment Room';
    }
  }

  IconData get icon {
    switch (this) {
      case RoomType.dormitory:
        return Icons.bed;
      case RoomType.kitchen:
        return Icons.kitchen;
      case RoomType.commonArea:
        return Icons.weekend;
      case RoomType.gym:
        return Icons.fitness_center;
      case RoomType.office:
        return Icons.business;
      case RoomType.storage:
        return Icons.inventory;
      case RoomType.bathroom:
        return Icons.bathroom;
      case RoomType.laundry:
        return Icons.local_laundry_service;
      case RoomType.meetingRoom:
        return Icons.meeting_room;
      case RoomType.trainingRoom:
        return Icons.school;
      case RoomType.equipment:
        return Icons.build;
    }
  }
}
