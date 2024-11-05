import 'package:core/nutrition/domain/models/macro_breakdown.dart';

class NutritionLog {
  final String id;
  final DateTime timestamp;
  final String foodName;
  final int calories;
  final MacroBreakdown macros;
  final String? mealType;
  final String? notes;
  final Map<String, num>? micronutrients;
  final String? imageUrl;
  final String? source; // manual, provider, integration
  final Map<String, dynamic>? metadata;

  const NutritionLog({
    required this.id,
    required this.timestamp,
    required this.foodName,
    required this.calories,
    required this.macros,
    this.mealType,
    this.notes,
    this.micronutrients,
    this.imageUrl,
    this.source,
    this.metadata,
  });

  NutritionLog copyWith({
    String? id,
    DateTime? timestamp,
    String? foodName,
    int? calories,
    MacroBreakdown? macros,
    String? mealType,
    String? notes,
    Map<String, num>? micronutrients,
    String? imageUrl,
    String? source,
    Map<String, dynamic>? metadata,
  }) {
    return NutritionLog(
      id: id ?? this.id,
      timestamp: timestamp ?? this.timestamp,
      foodName: foodName ?? this.foodName,
      calories: calories ?? this.calories,
      macros: macros ?? this.macros,
      mealType: mealType ?? this.mealType,
      notes: notes ?? this.notes,
      micronutrients: micronutrients ?? this.micronutrients,
      imageUrl: imageUrl ?? this.imageUrl,
      source: source ?? this.source,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'timestamp': timestamp.toIso8601String(),
        'foodName': foodName,
        'calories': calories,
        'macros': macros.toJson(),
        if (mealType != null) 'mealType': mealType,
        if (notes != null) 'notes': notes,
        if (micronutrients != null) 'micronutrients': micronutrients,
        if (imageUrl != null) 'imageUrl': imageUrl,
        if (source != null) 'source': source,
        if (metadata != null) 'metadata': metadata,
      };

  factory NutritionLog.fromJson(Map<String, dynamic> json) => NutritionLog(
        id: json['id'] as String,
        timestamp: DateTime.parse(json['timestamp'] as String),
        foodName: json['foodName'] as String,
        calories: json['calories'] as int,
        macros: MacroBreakdown.fromJson(json['macros'] as Map<String, dynamic>),
        mealType: json['mealType'] as String?,
        notes: json['notes'] as String?,
        micronutrients: (json['micronutrients'] as Map<String, dynamic>?)
            ?.map((k, v) => MapEntry(k, v as num)),
        imageUrl: json['imageUrl'] as String?,
        source: json['source'] as String?,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}
