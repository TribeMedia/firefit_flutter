import 'package:core/meals/domain/models/meal.dart';
import 'package:core/meals/domain/models/meal_plan.dart';
import 'package:core/meals/domain/models/meal_template.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:core/common/failures/failure.dart';
import 'package:core/meals/domain/models/menu.dart';

abstract class MealService {
  Future<List<Meal>> getTodaysMeals();
  Future<void> addMeal(Meal meal);
  Future<void> removeMeal(String mealId);
  Future<void> updateMeal(Meal meal);
  Future<List<Meal>> getMealHistory(DateTimeRange range);
  Future<List<MealPlan>> getMealPlans();
  Future<void> createMealPlan(MealPlan plan);
  Future<List<MealTemplate>> getMealTemplates();
  Future<Either<Failure, List<Menu>>> getProviderMenus(String providerId);
}
