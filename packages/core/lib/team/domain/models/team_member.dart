import 'package:core/team/domain/models/shift_schedule.dart';
import 'package:core/nutrition/domain/models/dietary_preferences.dart';
import 'package:core/commerce/domain/models/contact_info.dart';
import 'package:core/team/domain/models/certification_info.dart';

class TeamMember {
  final String id;
  final String name;
  final String badgeNumber;
  final ShiftRole primaryRole;
  final List<ShiftRole> secondaryRoles;
  final String stationId;
  final String? imageUrl;
  final DietaryPreferences dietaryPreferences;
  final ContactInfo contactInfo;
  final CertificationInfo certifications;
  final bool isActive;

  const TeamMember({
    required this.id,
    required this.name,
    required this.badgeNumber,
    required this.primaryRole,
    required this.secondaryRoles,
    required this.stationId,
    this.imageUrl,
    required this.dietaryPreferences,
    required this.contactInfo,
    required this.certifications,
    this.isActive = true,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'badgeNumber': badgeNumber,
        'primaryRole': primaryRole.toString(),
        'secondaryRoles': secondaryRoles.map((r) => r.toString()).toList(),
        'stationId': stationId,
        if (imageUrl != null) 'imageUrl': imageUrl,
        'dietaryPreferences': dietaryPreferences.toJson(),
        'contactInfo': contactInfo.toJson(),
        'certifications': certifications.toJson(),
        'isActive': isActive,
      };

  factory TeamMember.fromJson(Map<String, dynamic> json) => TeamMember(
        id: json['id'] as String,
        name: json['name'] as String,
        badgeNumber: json['badgeNumber'] as String,
        primaryRole: ShiftRole.values
            .firstWhere((e) => e.toString() == json['primaryRole']),
        secondaryRoles: (json['secondaryRoles'] as List)
            .map((r) => ShiftRole.values.firstWhere((e) => e.toString() == r))
            .toList(),
        stationId: json['stationId'] as String,
        imageUrl: json['imageUrl'] as String?,
        dietaryPreferences:
            DietaryPreferences.fromJson(json['dietaryPreferences']),
        contactInfo: ContactInfo.fromJson(json['contactInfo']),
        certifications: CertificationInfo.fromJson(json['certifications']),
        isActive: json['isActive'] as bool? ?? true,
      );
}
