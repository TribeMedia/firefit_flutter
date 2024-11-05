import 'package:core/common/models/location.dart';

class DeliveryInfo {
  final String id;
  final DeliveryType type;
  final Location deliveryLocation;
  final DateTime estimatedDeliveryTime;
  final DeliveryStatus status;
  final String? driverName;
  final String? driverPhone;
  final String? trackingNumber;
  final double? deliveryFee;
  final List<DeliveryInstruction>? specialInstructions;
  final Map<String, dynamic>? metadata;
  final double? fee;

  const DeliveryInfo({
    required this.id,
    required this.type,
    required this.deliveryLocation,
    required this.estimatedDeliveryTime,
    required this.status,
    this.driverName,
    this.driverPhone,
    this.trackingNumber,
    this.deliveryFee,
    this.specialInstructions,
    this.metadata,
    this.fee,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'type': type.toString(),
        'deliveryLocation': deliveryLocation.toJson(),
        'estimatedDeliveryTime': estimatedDeliveryTime.toIso8601String(),
        'status': status.toString(),
        if (driverName != null) 'driverName': driverName,
        if (driverPhone != null) 'driverPhone': driverPhone,
        if (trackingNumber != null) 'trackingNumber': trackingNumber,
        if (deliveryFee != null) 'deliveryFee': deliveryFee,
        if (specialInstructions != null)
          'specialInstructions':
              specialInstructions!.map((i) => i.toJson()).toList(),
        if (metadata != null) 'metadata': metadata,
        if (fee != null) 'fee': fee,
      };

  factory DeliveryInfo.fromJson(Map<String, dynamic> json) => DeliveryInfo(
        id: json['id'] as String,
        type:
            DeliveryType.values.firstWhere((e) => e.toString() == json['type']),
        deliveryLocation: Location.fromJson(json['deliveryLocation']),
        estimatedDeliveryTime: DateTime.parse(json['estimatedDeliveryTime']),
        status: DeliveryStatus.values
            .firstWhere((e) => e.toString() == json['status']),
        driverName: json['driverName'] as String?,
        driverPhone: json['driverPhone'] as String?,
        trackingNumber: json['trackingNumber'] as String?,
        deliveryFee: json['deliveryFee'] != null
            ? (json['deliveryFee'] as num).toDouble()
            : null,
        specialInstructions: json['specialInstructions'] != null
            ? (json['specialInstructions'] as List)
                .map((i) => DeliveryInstruction.fromJson(i))
                .toList()
            : null,
        metadata: json['metadata'] as Map<String, dynamic>?,
        fee: json['fee'] != null ? (json['fee'] as num).toDouble() : null,
      );
}

enum DeliveryType { standard, express, scheduled, pickup }

enum DeliveryStatus {
  pending,
  confirmed,
  inTransit,
  delivered,
  failed,
  cancelled
}

class DeliveryInstruction {
  final String instruction;
  final bool isRequired;
  final String? note;

  const DeliveryInstruction({
    required this.instruction,
    this.isRequired = false,
    this.note,
  });

  Map<String, dynamic> toJson() => {
        'instruction': instruction,
        'isRequired': isRequired,
        if (note != null) 'note': note,
      };

  factory DeliveryInstruction.fromJson(Map<String, dynamic> json) =>
      DeliveryInstruction(
        instruction: json['instruction'] as String,
        isRequired: json['isRequired'] as bool? ?? false,
        note: json['note'] as String?,
      );
}
