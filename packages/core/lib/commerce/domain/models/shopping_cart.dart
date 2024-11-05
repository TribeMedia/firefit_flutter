// packages/core/lib/src/commerce/domain/models/shopping_cart.dart
import 'package:core/commerce/domain/models/delivery_info.dart';
import 'package:core/nutrition/domain/models/dietary_restriction.dart';

class ShoppingCart {
  final String id;
  final String userId;
  final List<CartItem> items;
  final CartStatus status;
  final DateTime createdAt;
  final DateTime lastUpdated;
  final String? providerId;
  final CartType type;
  final List<String>? teamMembers;
  final Map<String, List<DietaryRestriction>> dietaryRestrictions;
  final DeliveryInfo? deliveryInfo;
  final String? notes;
  final Map<String, dynamic>? metadata;

  const ShoppingCart({
    required this.id,
    required this.userId,
    required this.items,
    required this.status,
    required this.createdAt,
    required this.lastUpdated,
    this.providerId,
    required this.type,
    this.teamMembers,
    required this.dietaryRestrictions,
    this.deliveryInfo,
    this.notes,
    this.metadata,
  });

  double get subtotal =>
      items.fold(0, (sum, item) => sum + (item.price * item.quantity));

  double get tax => subtotal * 0.0825; // Example tax rate

  double get deliveryFee => deliveryInfo?.fee ?? 0.0;

  double get total => subtotal + tax + deliveryFee;

  bool get isEmpty => items.isEmpty;
  bool get isNotEmpty => items.isNotEmpty;
  int get itemCount => items.length;
  bool get isTeamOrder => type == CartType.team;

  ShoppingCart copyWith({
    String? id,
    String? userId,
    List<CartItem>? items,
    CartStatus? status,
    DateTime? createdAt,
    DateTime? lastUpdated,
    String? providerId,
    CartType? type,
    List<String>? teamMembers,
    Map<String, List<DietaryRestriction>>? dietaryRestrictions,
    DeliveryInfo? deliveryInfo,
    String? notes,
    Map<String, dynamic>? metadata,
  }) {
    return ShoppingCart(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      items: items ?? this.items,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      providerId: providerId ?? this.providerId,
      type: type ?? this.type,
      teamMembers: teamMembers ?? this.teamMembers,
      dietaryRestrictions: dietaryRestrictions ?? this.dietaryRestrictions,
      deliveryInfo: deliveryInfo ?? this.deliveryInfo,
      notes: notes ?? this.notes,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'items': items.map((item) => item.toJson()).toList(),
        'status': status.toString(),
        'createdAt': createdAt.toIso8601String(),
        'lastUpdated': lastUpdated.toIso8601String(),
        if (providerId != null) 'providerId': providerId,
        'type': type.toString(),
        if (teamMembers != null) 'teamMembers': teamMembers,
        'dietaryRestrictions': dietaryRestrictions.map(
          (key, value) => MapEntry(key, value.map((r) => r.toJson()).toList()),
        ),
        if (deliveryInfo != null) 'deliveryInfo': deliveryInfo!.toJson(),
        if (notes != null) 'notes': notes,
        if (metadata != null) 'metadata': metadata,
      };

  factory ShoppingCart.fromJson(Map<String, dynamic> json) => ShoppingCart(
        id: json['id'] as String,
        userId: json['userId'] as String,
        items: (json['items'] as List)
            .map((item) => CartItem.fromJson(item))
            .toList(),
        status:
            CartStatus.values.firstWhere((e) => e.toString() == json['status']),
        createdAt: DateTime.parse(json['createdAt'] as String),
        lastUpdated: DateTime.parse(json['lastUpdated'] as String),
        providerId: json['providerId'] as String?,
        type: CartType.values.firstWhere((e) => e.toString() == json['type']),
        teamMembers:
            (json['teamMembers'] as List?)?.map((e) => e as String).toList(),
        dietaryRestrictions:
            (json['dietaryRestrictions'] as Map<String, dynamic>).map(
          (key, value) => MapEntry(
            key,
            (value as List).map((r) => DietaryRestriction.fromJson(r)).toList(),
          ),
        ),
        deliveryInfo: json['deliveryInfo'] != null
            ? DeliveryInfo.fromJson(json['deliveryInfo'])
            : null,
        notes: json['notes'] as String?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

class CartItem {
  final String id;
  final String menuItemId;
  final String name;
  final double price;
  final int quantity;
  final List<String>? customizations;
  final String? specialInstructions;
  final List<String>? assignedMembers;
  final List<DietaryRestriction>? dietaryRestrictions;
  final Map<String, dynamic>? metadata;

  const CartItem({
    required this.id,
    required this.menuItemId,
    required this.name,
    required this.price,
    required this.quantity,
    this.customizations,
    this.specialInstructions,
    this.assignedMembers,
    this.dietaryRestrictions,
    this.metadata,
  });

  double get total => price * quantity;

  CartItem copyWith({
    String? id,
    String? menuItemId,
    String? name,
    double? price,
    int? quantity,
    List<String>? customizations,
    String? specialInstructions,
    List<String>? assignedMembers,
    List<DietaryRestriction>? dietaryRestrictions,
    Map<String, dynamic>? metadata,
  }) {
    return CartItem(
      id: id ?? this.id,
      menuItemId: menuItemId ?? this.menuItemId,
      name: name ?? this.name,
      price: price ?? this.price,
      quantity: quantity ?? this.quantity,
      customizations: customizations ?? this.customizations,
      specialInstructions: specialInstructions ?? this.specialInstructions,
      assignedMembers: assignedMembers ?? this.assignedMembers,
      dietaryRestrictions: dietaryRestrictions ?? this.dietaryRestrictions,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'menuItemId': menuItemId,
        'name': name,
        'price': price,
        'quantity': quantity,
        if (customizations != null) 'customizations': customizations,
        if (specialInstructions != null)
          'specialInstructions': specialInstructions,
        if (assignedMembers != null) 'assignedMembers': assignedMembers,
        if (dietaryRestrictions != null)
          'dietaryRestrictions':
              dietaryRestrictions!.map((r) => r.toJson()).toList(),
        if (metadata != null) 'metadata': metadata,
      };

  factory CartItem.fromJson(Map<String, dynamic> json) => CartItem(
        id: json['id'] as String,
        menuItemId: json['menuItemId'] as String,
        name: json['name'] as String,
        price: (json['price'] as num).toDouble(),
        quantity: json['quantity'] as int,
        customizations:
            (json['customizations'] as List?)?.map((e) => e as String).toList(),
        specialInstructions: json['specialInstructions'] as String?,
        assignedMembers: (json['assignedMembers'] as List?)
            ?.map((e) => e as String)
            .toList(),
        dietaryRestrictions: json['dietaryRestrictions'] != null
            ? (json['dietaryRestrictions'] as List)
                .map((r) => DietaryRestriction.fromJson(r))
                .toList()
            : null,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum CartStatus {
  active,
  checkout,
  submitted,
  processing,
  completed,
  cancelled
}

enum CartType { individual, team }
