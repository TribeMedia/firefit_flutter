// packages/core/lib/src/meals/domain/models/planned_meal.dart
import 'package:core/nutrition/domain/models/macro_nutrients.dart';
import 'package:core/nutrition/domain/models/dietary_restriction.dart';
import 'package:flutter/material.dart';

class PlannedMeal {
  final String id;
  final String name;
  final String description;
  final DateTime plannedTime;
  final MealType mealType;
  final int servings;
  final int caloriesPerServing;
  final MacroNutrients macros;
  final List<String> assignedMembers;
  final String? chefId;
  final bool isTeamMeal;
  final PreparationStatus preparationStatus;
  final List<String> ingredients;
  final List<String>? instructions;
  final String? imageUrl;
  final List<DietaryRestriction>? dietaryInfo;
  final MealSource source;
  final List<String>? allergies;
  final Map<String, dynamic>? nutritionInfo;
  final DateTime? prepStartTime;
  final Duration? estimatedPrepTime;
  final Map<String, dynamic>? metadata;

  const PlannedMeal({
    required this.id,
    required this.name,
    required this.description,
    required this.plannedTime,
    required this.mealType,
    required this.servings,
    required this.caloriesPerServing,
    required this.macros,
    required this.assignedMembers,
    this.chefId,
    this.isTeamMeal = false,
    this.preparationStatus = PreparationStatus.pending,
    required this.ingredients,
    this.instructions,
    this.imageUrl,
    this.dietaryInfo,
    required this.source,
    this.allergies,
    this.nutritionInfo,
    this.prepStartTime,
    this.estimatedPrepTime,
    this.metadata,
  });

  int get totalCalories => caloriesPerServing * servings;

  bool get requiresPreparation => source == MealSource.homemade;

  bool get isUpcoming => plannedTime.isAfter(DateTime.now());

  Duration? get timeUntilPrep {
    if (prepStartTime == null) return null;
    return prepStartTime!.difference(DateTime.now());
  }

  bool get hasAllergies => allergies != null && allergies!.isNotEmpty;

  bool get hasDietaryRestrictions =>
      dietaryInfo != null && dietaryInfo!.isNotEmpty;

  PlannedMeal copyWith({
    String? id,
    String? name,
    String? description,
    DateTime? plannedTime,
    MealType? mealType,
    int? servings,
    int? caloriesPerServing,
    MacroNutrients? macros,
    List<String>? assignedMembers,
    String? chefId,
    bool? isTeamMeal,
    PreparationStatus? preparationStatus,
    List<String>? ingredients,
    List<String>? instructions,
    String? imageUrl,
    List<DietaryRestriction>? dietaryInfo,
    MealSource? source,
    List<String>? allergies,
    Map<String, dynamic>? nutritionInfo,
    DateTime? prepStartTime,
    Duration? estimatedPrepTime,
    Map<String, dynamic>? metadata,
  }) {
    return PlannedMeal(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      plannedTime: plannedTime ?? this.plannedTime,
      mealType: mealType ?? this.mealType,
      servings: servings ?? this.servings,
      caloriesPerServing: caloriesPerServing ?? this.caloriesPerServing,
      macros: macros ?? this.macros,
      assignedMembers: assignedMembers ?? this.assignedMembers,
      chefId: chefId ?? this.chefId,
      isTeamMeal: isTeamMeal ?? this.isTeamMeal,
      preparationStatus: preparationStatus ?? this.preparationStatus,
      ingredients: ingredients ?? this.ingredients,
      instructions: instructions ?? this.instructions,
      imageUrl: imageUrl ?? this.imageUrl,
      dietaryInfo: dietaryInfo ?? this.dietaryInfo,
      source: source ?? this.source,
      allergies: allergies ?? this.allergies,
      nutritionInfo: nutritionInfo ?? this.nutritionInfo,
      prepStartTime: prepStartTime ?? this.prepStartTime,
      estimatedPrepTime: estimatedPrepTime ?? this.estimatedPrepTime,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'plannedTime': plannedTime.toIso8601String(),
        'mealType': mealType.toString(),
        'servings': servings,
        'caloriesPerServing': caloriesPerServing,
        'macros': macros.toJson(),
        'assignedMembers': assignedMembers,
        if (chefId != null) 'chefId': chefId,
        'isTeamMeal': isTeamMeal,
        'preparationStatus': preparationStatus.toString(),
        'ingredients': ingredients,
        if (instructions != null) 'instructions': instructions,
        if (imageUrl != null) 'imageUrl': imageUrl,
        if (dietaryInfo != null)
          'dietaryInfo': dietaryInfo!.map((d) => d.toJson()).toList(),
        'source': source.toString(),
        if (allergies != null) 'allergies': allergies,
        if (nutritionInfo != null) 'nutritionInfo': nutritionInfo,
        if (prepStartTime != null)
          'prepStartTime': prepStartTime!.toIso8601String(),
        if (estimatedPrepTime != null)
          'estimatedPrepTime': estimatedPrepTime!.inMinutes,
        if (metadata != null) 'metadata': metadata,
      };

  factory PlannedMeal.fromJson(Map<String, dynamic> json) => PlannedMeal(
        id: json['id'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        plannedTime: DateTime.parse(json['plannedTime'] as String),
        mealType:
            MealType.values.firstWhere((e) => e.toString() == json['mealType']),
        servings: json['servings'] as int,
        caloriesPerServing: json['caloriesPerServing'] as int,
        macros: MacroNutrients.fromJson(json['macros']),
        assignedMembers:
            (json['assignedMembers'] as List).map((e) => e as String).toList(),
        chefId: json['chefId'] as String?,
        isTeamMeal: json['isTeamMeal'] as bool? ?? false,
        preparationStatus: PreparationStatus.values
            .firstWhere((e) => e.toString() == json['preparationStatus']),
        ingredients:
            (json['ingredients'] as List).map((e) => e as String).toList(),
        instructions:
            (json['instructions'] as List?)?.map((e) => e as String).toList(),
        imageUrl: json['imageUrl'] as String?,
        dietaryInfo: json['dietaryInfo'] != null
            ? (json['dietaryInfo'] as List)
                .map((d) => DietaryRestriction.fromJson(d))
                .toList()
            : null,
        source:
            MealSource.values.firstWhere((e) => e.toString() == json['source']),
        allergies:
            (json['allergies'] as List?)?.map((e) => e as String).toList(),
        nutritionInfo: json['nutritionInfo'] as Map<String, dynamic>?,
        prepStartTime: json['prepStartTime'] != null
            ? DateTime.parse(json['prepStartTime'] as String)
            : null,
        estimatedPrepTime: json['estimatedPrepTime'] != null
            ? Duration(minutes: json['estimatedPrepTime'] as int)
            : null,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

enum MealType { breakfast, lunch, dinner, snack }

enum PreparationStatus {
  pending,
  scheduled,
  inProgress,
  ready,
  served,
  cancelled
}

enum MealSource { homemade, restaurant, mealPrep, catering, delivery }

extension MealTypeExtension on MealType {
  String get displayName {
    switch (this) {
      case MealType.breakfast:
        return 'Breakfast';
      case MealType.lunch:
        return 'Lunch';
      case MealType.dinner:
        return 'Dinner';
      case MealType.snack:
        return 'Snack';
    }
  }

  IconData get icon {
    switch (this) {
      case MealType.breakfast:
        return Icons.free_breakfast;
      case MealType.lunch:
        return Icons.lunch_dining;
      case MealType.dinner:
        return Icons.dinner_dining;
      case MealType.snack:
        return Icons.apple;
    }
  }
}
