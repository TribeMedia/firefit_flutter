// Additional helper class for order items
class OrderItem {
  final String id;
  final String menuItemId;
  final String name;
  final int quantity;
  final double unitPrice;
  final double totalPrice;
  final List<String>? customizations;
  final String? specialInstructions;
  final Map<String, dynamic>? metadata;

  const OrderItem({
    required this.id,
    required this.menuItemId,
    required this.name,
    required this.quantity,
    required this.unitPrice,
    required this.totalPrice,
    this.customizations,
    this.specialInstructions,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'menuItemId': menuItemId,
        'name': name,
        'quantity': quantity,
        'unitPrice': unitPrice,
        'totalPrice': totalPrice,
        if (customizations != null) 'customizations': customizations,
        if (specialInstructions != null)
          'specialInstructions': specialInstructions,
        if (metadata != null) 'metadata': metadata,
      };

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        id: json['id'] as String,
        menuItemId: json['menuItemId'] as String,
        name: json['name'] as String,
        quantity: json['quantity'] as int,
        unitPrice: (json['unitPrice'] as num).toDouble(),
        totalPrice: (json['totalPrice'] as num).toDouble(),
        customizations: (json['customizations'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        specialInstructions: json['specialInstructions'] as String?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );

  OrderItem copyWith({
    String? id,
    String? menuItemId,
    String? name,
    int? quantity,
    double? unitPrice,
    double? totalPrice,
    List<String>? customizations,
    String? specialInstructions,
    Map<String, dynamic>? metadata,
  }) {
    return OrderItem(
      id: id ?? this.id,
      menuItemId: menuItemId ?? this.menuItemId,
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      unitPrice: unitPrice ?? this.unitPrice,
      totalPrice: totalPrice ?? this.totalPrice,
      customizations: customizations ?? this.customizations,
      specialInstructions: specialInstructions ?? this.specialInstructions,
      metadata: metadata ?? this.metadata,
    );
  }
}
