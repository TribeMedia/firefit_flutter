// packages/core/lib/src/team/domain/models/certification_info.dart

class CertificationInfo {
  final List<Certification> certifications;
  final List<Qualification> qualifications;
  final List<TrainingRecord> trainingRecords;
  final Map<String, DateTime> expirationDates;
  final bool isActive;
  final Map<String, dynamic>? metadata;

  const CertificationInfo({
    required this.certifications,
    required this.qualifications,
    required this.trainingRecords,
    required this.expirationDates,
    this.isActive = true,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'certifications': certifications.map((c) => c.toJson()).toList(),
        'qualifications': qualifications.map((q) => q.toJson()).toList(),
        'trainingRecords': trainingRecords.map((t) => t.toJson()).toList(),
        'expirationDates': expirationDates.map(
          (k, v) => MapEntry(k, v.toIso8601String()),
        ),
        'isActive': isActive,
        if (metadata != null) 'metadata': metadata,
      };

  factory CertificationInfo.fromJson(Map<String, dynamic> json) =>
      CertificationInfo(
        certifications: (json['certifications'] as List)
            .map((c) => Certification.fromJson(c))
            .toList(),
        qualifications: (json['qualifications'] as List)
            .map((q) => Qualification.fromJson(q))
            .toList(),
        trainingRecords: (json['trainingRecords'] as List)
            .map((t) => TrainingRecord.fromJson(t))
            .toList(),
        expirationDates: (json['expirationDates'] as Map<String, dynamic>).map(
          (k, v) => MapEntry(k, DateTime.parse(v as String)),
        ),
        isActive: json['isActive'] as bool? ?? true,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );

  bool isCertificationValid(String certificationId) {
    final certification = certifications.firstWhere(
      (c) => c.id == certificationId,
      orElse: () => throw Exception('Certification not found'),
    );
    final expirationDate = expirationDates[certificationId];
    if (expirationDate == null) return false;
    return DateTime.now().isBefore(expirationDate) && certification.isActive;
  }

  List<String> getExpiringCertifications(Duration threshold) {
    final now = DateTime.now();
    return expirationDates.entries
        .where((entry) {
          final timeUntilExpiration = entry.value.difference(now);
          return timeUntilExpiration > Duration.zero &&
              timeUntilExpiration <= threshold;
        })
        .map((entry) => entry.key)
        .toList();
  }
}

class Certification {
  final String id;
  final String name;
  final String issuingAuthority;
  final DateTime issueDate;
  final DateTime expirationDate;
  final String certificationNumber;
  final CertificationType type;
  final CertificationLevel level;
  final bool isActive;
  final String? verificationUrl;
  final Map<String, dynamic>? requirements;

  const Certification({
    required this.id,
    required this.name,
    required this.issuingAuthority,
    required this.issueDate,
    required this.expirationDate,
    required this.certificationNumber,
    required this.type,
    required this.level,
    this.isActive = true,
    this.verificationUrl,
    this.requirements,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'issuingAuthority': issuingAuthority,
        'issueDate': issueDate.toIso8601String(),
        'expirationDate': expirationDate.toIso8601String(),
        'certificationNumber': certificationNumber,
        'type': type.toString(),
        'level': level.toString(),
        'isActive': isActive,
        if (verificationUrl != null) 'verificationUrl': verificationUrl,
        if (requirements != null) 'requirements': requirements,
      };

  factory Certification.fromJson(Map<String, dynamic> json) => Certification(
        id: json['id'] as String,
        name: json['name'] as String,
        issuingAuthority: json['issuingAuthority'] as String,
        issueDate: DateTime.parse(json['issueDate'] as String),
        expirationDate: DateTime.parse(json['expirationDate'] as String),
        certificationNumber: json['certificationNumber'] as String,
        type: CertificationType.values
            .firstWhere((e) => e.toString() == json['type']),
        level: CertificationLevel.values
            .firstWhere((e) => e.toString() == json['level']),
        isActive: json['isActive'] as bool? ?? true,
        verificationUrl: json['verificationUrl'] as String?,
        requirements: json['requirements'] as Map<String, dynamic>?,
      );
}

class Qualification {
  final String id;
  final String name;
  final String description;
  final List<String> requiredCertifications;
  final List<String> requiredTraining;
  final DateTime achievementDate;
  final bool isActive;
  final Map<String, dynamic>? metadata;

  const Qualification({
    required this.id,
    required this.name,
    required this.description,
    required this.requiredCertifications,
    required this.requiredTraining,
    required this.achievementDate,
    this.isActive = true,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'requiredCertifications': requiredCertifications,
        'requiredTraining': requiredTraining,
        'achievementDate': achievementDate.toIso8601String(),
        'isActive': isActive,
        if (metadata != null) 'metadata': metadata,
      };

  factory Qualification.fromJson(Map<String, dynamic> json) => Qualification(
        id: json['id'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        requiredCertifications: (json['requiredCertifications'] as List)
            .map((e) => e as String)
            .toList(),
        requiredTraining:
            (json['requiredTraining'] as List).map((e) => e as String).toList(),
        achievementDate: DateTime.parse(json['achievementDate'] as String),
        isActive: json['isActive'] as bool? ?? true,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

class TrainingRecord {
  final String id;
  final String name;
  final String description;
  final DateTime completionDate;
  final Duration duration;
  final String instructor;
  final String location;
  final TrainingType type;
  final double? score;
  final String? certificateUrl;
  final Map<String, dynamic>? metadata;

  const TrainingRecord({
    required this.id,
    required this.name,
    required this.description,
    required this.completionDate,
    required this.duration,
    required this.instructor,
    required this.location,
    required this.type,
    this.score,
    this.certificateUrl,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'completionDate': completionDate.toIso8601String(),
        'duration': duration.inMinutes,
        'instructor': instructor,
        'location': location,
        'type': type.toString(),
        if (score != null) 'score': score,
        if (certificateUrl != null) 'certificateUrl': certificateUrl,
        if (metadata != null) 'metadata': metadata,
      };

  factory TrainingRecord.fromJson(Map<String, dynamic> json) => TrainingRecord(
        id: json['id'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        completionDate: DateTime.parse(json['completionDate'] as String),
        duration: Duration(minutes: json['duration'] as int),
        instructor: json['instructor'] as String,
        location: json['location'] as String,
        type:
            TrainingType.values.firstWhere((e) => e.toString() == json['type']),
        score: json['score'] != null ? (json['score'] as num).toDouble() : null,
        certificateUrl: json['certificateUrl'] as String?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum CertificationType {
  firefighting,
  ems,
  hazmat,
  rescue,
  leadership,
  specialization,
  instructor
}

enum CertificationLevel {
  basic,
  intermediate,
  advanced,
  specialist,
  instructor,
  master
}

enum TrainingType {
  initial,
  recurrent,
  specialized,
  mandatory,
  voluntary,
  online,
  handson
}
