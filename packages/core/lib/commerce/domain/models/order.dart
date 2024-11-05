import 'package:core/commerce/domain/models/delivery_info.dart';
import 'package:core/commerce/domain/models/payment_info.dart';
import 'package:core/commerce/domain/models/order_item.dart';

class Order {
  final String id;
  final String providerId;
  final String userId;
  final List<OrderItem> items;
  final DateTime orderTime;
  final OrderStatus status;
  final DeliveryInfo? deliveryInfo;
  final PaymentInfo paymentInfo;
  final double subtotal;
  final double tax;
  final double total;
  final String? notes;
  final bool isTeamOrder;

  const Order({
    required this.id,
    required this.providerId,
    required this.userId,
    required this.items,
    required this.orderTime,
    required this.status,
    this.deliveryInfo,
    required this.paymentInfo,
    required this.subtotal,
    required this.tax,
    required this.total,
    this.notes,
    this.isTeamOrder = false,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'providerId': providerId,
        'userId': userId,
        'items': items.map((item) => item.toJson()).toList(),
        'orderTime': orderTime.toIso8601String(),
        'status': status.toString(),
        if (deliveryInfo != null) 'deliveryInfo': deliveryInfo!.toJson(),
        'paymentInfo': paymentInfo.toJson(),
        'subtotal': subtotal,
        'tax': tax,
        'total': total,
        if (notes != null) 'notes': notes,
        'isTeamOrder': isTeamOrder,
      };

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json['id'] as String,
        providerId: json['providerId'] as String,
        userId: json['userId'] as String,
        items: (json['items'] as List)
            .map((item) => OrderItem.fromJson(item))
            .toList(),
        orderTime: DateTime.parse(json['orderTime'] as String),
        status: OrderStatus.values
            .firstWhere((e) => e.toString() == json['status']),
        deliveryInfo: json['deliveryInfo'] != null
            ? DeliveryInfo.fromJson(json['deliveryInfo'])
            : null,
        paymentInfo: PaymentInfo.fromJson(json['paymentInfo']),
        subtotal: (json['subtotal'] as num).toDouble(),
        tax: (json['tax'] as num).toDouble(),
        total: (json['total'] as num).toDouble(),
        notes: json['notes'] as String?,
        isTeamOrder: json['isTeamOrder'] as bool? ?? false,
      );
}

enum OrderStatus {
  pending,
  confirmed,
  preparing,
  readyForPickup,
  outForDelivery,
  delivered,
  cancelled
}
