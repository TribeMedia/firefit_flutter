import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/nutrition/domain/models/dietary_restriction.dart';
import 'package:core/nutrition/domain/models/macro_breakdown.dart';
import 'package:core/meals/domain/models/planned_meal.dart';
import 'package:core/meals/domain/models/menu.dart';

part 'meal_plan.freezed.dart';
part 'meal_plan.g.dart';

@freezed
class MealPlan with _$MealPlan {
  const factory MealPlan({
    required String id,
    required String name,
    required DateTime date,
    required List<PlannedMeal> meals,
    required Map<String, DietaryRestriction> teamRestrictions,
    required int totalCalories,
    required MacroBreakdown macros,
    required List<MenuItem> menuItems,
    @Default(false) bool isTeamPlan,
  }) = _MealPlan;

  factory MealPlan.fromJson(Map<String, dynamic> json) =>
      _$MealPlanFromJson(json);
}
