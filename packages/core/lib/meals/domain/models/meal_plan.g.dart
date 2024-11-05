// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealPlanImpl _$$MealPlanImplFromJson(Map<String, dynamic> json) =>
    _$MealPlanImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      date: DateTime.parse(json['date'] as String),
      meals: (json['meals'] as List<dynamic>)
          .map((e) => PlannedMeal.fromJson(e as Map<String, dynamic>))
          .toList(),
      teamRestrictions: (json['teamRestrictions'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, DietaryRestriction.fromJson(e as Map<String, dynamic>)),
      ),
      totalCalories: (json['totalCalories'] as num).toInt(),
      macros: MacroBreakdown.fromJson(json['macros'] as Map<String, dynamic>),
      menuItems: (json['menuItems'] as List<dynamic>)
          .map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      isTeamPlan: json['isTeamPlan'] as bool? ?? false,
    );

Map<String, dynamic> _$$MealPlanImplToJson(_$MealPlanImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'date': instance.date.toIso8601String(),
      'meals': instance.meals,
      'teamRestrictions': instance.teamRestrictions,
      'totalCalories': instance.totalCalories,
      'macros': instance.macros,
      'menuItems': instance.menuItems,
      'isTeamPlan': instance.isTeamPlan,
    };
