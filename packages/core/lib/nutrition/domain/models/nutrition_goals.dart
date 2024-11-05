import 'package:core/nutrition/domain/models/macro_breakdown.dart';

class NutritionGoals {
  final int dailyCalories;
  final MacroBreakdown targetMacros;
  final Map<String, num>? micronutrientTargets;
  final int? mealsPerDay;
  final List<String>? preferredMealTimes;
  final List<String>? dietaryRestrictions;
  final List<String>? allergies;
  final Map<String, dynamic>? customTargets;

  const NutritionGoals({
    required this.dailyCalories,
    required this.targetMacros,
    this.micronutrientTargets,
    this.mealsPerDay,
    this.preferredMealTimes,
    this.dietaryRestrictions,
    this.allergies,
    this.customTargets,
  });

  NutritionGoals copyWith({
    int? dailyCalories,
    MacroBreakdown? targetMacros,
    Map<String, num>? micronutrientTargets,
    int? mealsPerDay,
    List<String>? preferredMealTimes,
    List<String>? dietaryRestrictions,
    List<String>? allergies,
    Map<String, dynamic>? customTargets,
  }) {
    return NutritionGoals(
      dailyCalories: dailyCalories ?? this.dailyCalories,
      targetMacros: targetMacros ?? this.targetMacros,
      micronutrientTargets: micronutrientTargets ?? this.micronutrientTargets,
      mealsPerDay: mealsPerDay ?? this.mealsPerDay,
      preferredMealTimes: preferredMealTimes ?? this.preferredMealTimes,
      dietaryRestrictions: dietaryRestrictions ?? this.dietaryRestrictions,
      allergies: allergies ?? this.allergies,
      customTargets: customTargets ?? this.customTargets,
    );
  }

  Map<String, dynamic> toJson() => {
        'dailyCalories': dailyCalories,
        'targetMacros': targetMacros.toJson(),
        if (micronutrientTargets != null)
          'micronutrientTargets': micronutrientTargets,
        if (mealsPerDay != null) 'mealsPerDay': mealsPerDay,
        if (preferredMealTimes != null)
          'preferredMealTimes': preferredMealTimes,
        if (dietaryRestrictions != null)
          'dietaryRestrictions': dietaryRestrictions,
        if (allergies != null) 'allergies': allergies,
        if (customTargets != null) 'customTargets': customTargets,
      };

  factory NutritionGoals.fromJson(Map<String, dynamic> json) => NutritionGoals(
        dailyCalories: json['dailyCalories'] as int,
        targetMacros: MacroBreakdown.fromJson(
            json['targetMacros'] as Map<String, dynamic>),
        micronutrientTargets:
            (json['micronutrientTargets'] as Map<String, dynamic>?)
                ?.map((k, v) => MapEntry(k, v as num)),
        mealsPerDay: json['mealsPerDay'] as int?,
        preferredMealTimes: (json['preferredMealTimes'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        dietaryRestrictions: (json['dietaryRestrictions'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        allergies: (json['allergies'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
        customTargets: json['customTargets'] as Map<String, dynamic>?,
      );
}
