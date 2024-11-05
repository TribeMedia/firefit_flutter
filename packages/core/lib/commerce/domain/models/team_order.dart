// packages/core/lib/src/commerce/domain/models/team_order.dart

import 'package:core/commerce/domain/models/delivery_info.dart';
import 'package:core/commerce/domain/models/payment_info.dart';
import 'package:core/nutrition/domain/models/dietary_restriction.dart';
import 'package:flutter/material.dart';

class TeamOrder {
  final String id;
  final String stationId;
  final String shiftId;
  final String providerId;
  final DateTime orderTime;
  final DateTime deliveryTime;
  final List<TeamOrderItem> items;
  final TeamOrderStatus status;
  final List<String> participants;
  final String? coordinatorId;
  final PaymentInfo paymentInfo;
  final DeliveryInfo deliveryInfo;
  final double subtotal;
  final double tax;
  final double deliveryFee;
  final double total;
  final Map<String, List<DietaryRestriction>> dietaryRestrictions;
  final String? notes;
  final Map<String, dynamic>? metadata;

  const TeamOrder({
    required this.id,
    required this.stationId,
    required this.shiftId,
    required this.providerId,
    required this.orderTime,
    required this.deliveryTime,
    required this.items,
    required this.status,
    required this.participants,
    this.coordinatorId,
    required this.paymentInfo,
    required this.deliveryInfo,
    required this.subtotal,
    required this.tax,
    required this.deliveryFee,
    required this.total,
    required this.dietaryRestrictions,
    this.notes,
    this.metadata,
  });

  bool get isCoordinated => coordinatorId != null;
  bool get isPending => status == TeamOrderStatus.pending;
  bool get isConfirmed => status == TeamOrderStatus.confirmed;
  bool get isInProgress => status == TeamOrderStatus.inProgress;
  int get participantCount => participants.length;

  Map<String, dynamic> toJson() => {
        'id': id,
        'stationId': stationId,
        'shiftId': shiftId,
        'providerId': providerId,
        'orderTime': orderTime.toIso8601String(),
        'deliveryTime': deliveryTime.toIso8601String(),
        'items': items.map((item) => item.toJson()).toList(),
        'status': status.toString(),
        'participants': participants,
        if (coordinatorId != null) 'coordinatorId': coordinatorId,
        'paymentInfo': paymentInfo.toJson(),
        'deliveryInfo': deliveryInfo.toJson(),
        'subtotal': subtotal,
        'tax': tax,
        'deliveryFee': deliveryFee,
        'total': total,
        'dietaryRestrictions': dietaryRestrictions.map(
          (key, value) => MapEntry(key, value.map((r) => r.toJson()).toList()),
        ),
        if (notes != null) 'notes': notes,
        if (metadata != null) 'metadata': metadata,
      };

  factory TeamOrder.fromJson(Map<String, dynamic> json) => TeamOrder(
        id: json['id'] as String,
        stationId: json['stationId'] as String,
        shiftId: json['shiftId'] as String,
        providerId: json['providerId'] as String,
        orderTime: DateTime.parse(json['orderTime'] as String),
        deliveryTime: DateTime.parse(json['deliveryTime'] as String),
        items: (json['items'] as List)
            .map((item) => TeamOrderItem.fromJson(item))
            .toList(),
        status: TeamOrderStatus.values
            .firstWhere((e) => e.toString() == json['status']),
        participants:
            (json['participants'] as List).map((e) => e as String).toList(),
        coordinatorId: json['coordinatorId'] as String?,
        paymentInfo: PaymentInfo.fromJson(json['paymentInfo']),
        deliveryInfo: DeliveryInfo.fromJson(json['deliveryInfo']),
        subtotal: (json['subtotal'] as num).toDouble(),
        tax: (json['tax'] as num).toDouble(),
        deliveryFee: (json['deliveryFee'] as num).toDouble(),
        total: (json['total'] as num).toDouble(),
        dietaryRestrictions:
            (json['dietaryRestrictions'] as Map<String, dynamic>).map(
          (key, value) => MapEntry(
            key,
            (value as List).map((r) => DietaryRestriction.fromJson(r)).toList(),
          ),
        ),
        notes: json['notes'] as String?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

class TeamOrderItem {
  final String id;
  final String menuItemId;
  final String name;
  final int quantity;
  final double unitPrice;
  final double totalPrice;
  final List<String> assignedMembers;
  final List<String>? customizations;
  final String? specialInstructions;
  final List<DietaryRestriction>? dietaryRestrictions;
  final Map<String, dynamic>? metadata;

  const TeamOrderItem({
    required this.id,
    required this.menuItemId,
    required this.name,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    required this.assignedMembers,
    this.customizations,
    this.specialInstructions,
    this.dietaryRestrictions,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'menuItemId': menuItemId,
        'name': name,
        'quantity': quantity,
        'unitPrice': unitPrice,
        'totalPrice': totalPrice,
        'assignedMembers': assignedMembers,
        if (customizations != null) 'customizations': customizations,
        if (specialInstructions != null)
          'specialInstructions': specialInstructions,
        if (dietaryRestrictions != null)
          'dietaryRestrictions':
              dietaryRestrictions!.map((r) => r.toJson()).toList(),
        if (metadata != null) 'metadata': metadata,
      };

  factory TeamOrderItem.fromJson(Map<String, dynamic> json) => TeamOrderItem(
        id: json['id'] as String,
        menuItemId: json['menuItemId'] as String,
        name: json['name'] as String,
        quantity: json['quantity'] as int,
        unitPrice: (json['unitPrice'] as num).toDouble(),
        totalPrice: (json['totalPrice'] as num).toDouble(),
        assignedMembers:
            (json['assignedMembers'] as List).map((e) => e as String).toList(),
        customizations:
            (json['customizations'] as List?)?.map((e) => e as String).toList(),
        specialInstructions: json['specialInstructions'] as String?,
        dietaryRestrictions: json['dietaryRestrictions'] != null
            ? (json['dietaryRestrictions'] as List)
                .map((r) => DietaryRestriction.fromJson(r))
                .toList()
            : null,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum TeamOrderStatus {
  draft,
  pending,
  confirmed,
  inProgress,
  readyForPickup,
  outForDelivery,
  delivered,
  cancelled
}

extension TeamOrderStatusExtension on TeamOrderStatus {
  String get displayName {
    switch (this) {
      case TeamOrderStatus.draft:
        return 'Draft';
      case TeamOrderStatus.pending:
        return 'Pending';
      case TeamOrderStatus.confirmed:
        return 'Confirmed';
      case TeamOrderStatus.inProgress:
        return 'In Progress';
      case TeamOrderStatus.readyForPickup:
        return 'Ready for Pickup';
      case TeamOrderStatus.outForDelivery:
        return 'Out for Delivery';
      case TeamOrderStatus.delivered:
        return 'Delivered';
      case TeamOrderStatus.cancelled:
        return 'Cancelled';
    }
  }

  Color get color {
    switch (this) {
      case TeamOrderStatus.draft:
        return Colors.grey;
      case TeamOrderStatus.pending:
        return Colors.orange;
      case TeamOrderStatus.confirmed:
        return Colors.blue;
      case TeamOrderStatus.inProgress:
        return Colors.purple;
      case TeamOrderStatus.readyForPickup:
        return Colors.green;
      case TeamOrderStatus.outForDelivery:
        return Colors.indigo;
      case TeamOrderStatus.delivered:
        return Colors.teal;
      case TeamOrderStatus.cancelled:
        return Colors.red;
    }
  }

  IconData get icon {
    switch (this) {
      case TeamOrderStatus.draft:
        return Icons.edit;
      case TeamOrderStatus.pending:
        return Icons.pending;
      case TeamOrderStatus.confirmed:
        return Icons.check_circle;
      case TeamOrderStatus.inProgress:
        return Icons.restaurant;
      case TeamOrderStatus.readyForPickup:
        return Icons.store;
      case TeamOrderStatus.outForDelivery:
        return Icons.delivery_dining;
      case TeamOrderStatus.delivered:
        return Icons.done_all;
      case TeamOrderStatus.cancelled:
        return Icons.cancel;
    }
  }
}
