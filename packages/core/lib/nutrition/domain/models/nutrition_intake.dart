import 'package:core/nutrition/domain/models/macro_nutrients.dart';

class NutritionIntake {
  final String id;
  final DateTime timestamp;
  final String userId;
  final String mealId;
  final String mealType;
  final int calories;
  final MacroNutrients macros;
  final Map<String, double>? micronutrients;
  final List<String>? ingredients;
  final String? notes;
  final String source; // manual, provider, integration
  final Map<String, dynamic>? metadata;

  const NutritionIntake({
    required this.id,
    required this.timestamp,
    required this.userId,
    required this.mealId,
    required this.mealType,
    required this.calories,
    required this.macros,
    this.micronutrients,
    this.ingredients,
    this.notes,
    required this.source,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'timestamp': timestamp.toIso8601String(),
        'userId': userId,
        'mealId': mealId,
        'mealType': mealType,
        'calories': calories,
        'macros': macros.toJson(),
        if (micronutrients != null) 'micronutrients': micronutrients,
        if (ingredients != null) 'ingredients': ingredients,
        if (notes != null) 'notes': notes,
        'source': source,
        if (metadata != null) 'metadata': metadata,
      };

  factory NutritionIntake.fromJson(Map<String, dynamic> json) =>
      NutritionIntake(
        id: json['id'] as String,
        timestamp: DateTime.parse(json['timestamp'] as String),
        userId: json['userId'] as String,
        mealId: json['mealId'] as String,
        mealType: json['mealType'] as String,
        calories: json['calories'] as int,
        macros: MacroNutrients.fromJson(json['macros']),
        micronutrients: (json['micronutrients'] as Map<String, dynamic>?)
            ?.map((k, v) => MapEntry(k, (v as num).toDouble())),
        ingredients: (json['ingredients'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        notes: json['notes'] as String?,
        source: json['source'] as String,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}
