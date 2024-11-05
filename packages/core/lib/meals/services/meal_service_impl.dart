import 'package:core/meals/domain/models/meal.dart';
import 'package:core/meals/domain/models/meal_plan.dart';
import 'package:core/meals/domain/models/meal_template.dart';
import 'package:core/meals/services/meal_service.dart';
import 'package:flutter/material.dart' show DateTimeRange;
import 'package:fpdart/fpdart.dart';
import 'package:core/common/failures/failure.dart';
import 'package:core/meals/domain/models/menu.dart';

class MealServiceImpl extends MealService {
  @override
  Future<List<Meal>> getTodaysMeals() async {
    return [];
  }

  @override
  Future<void> addMeal(Meal meal) {
    // TODO: implement addMeal
    throw UnimplementedError();
  }

  @override
  Future<void> createMealPlan(MealPlan plan) {
    // TODO: implement createMealPlan
    throw UnimplementedError();
  }

  @override
  Future<List<Meal>> getMealHistory(DateTimeRange range) {
    // TODO: implement getMealHistory
    throw UnimplementedError();
  }

  @override
  Future<List<MealPlan>> getMealPlans() {
    // TODO: implement getMealPlans
    throw UnimplementedError();
  }

  @override
  Future<List<MealTemplate>> getMealTemplates() {
    // TODO: implement getMealTemplates
    throw UnimplementedError();
  }

  @override
  Future<void> removeMeal(String mealId) {
    // TODO: implement removeMeal
    throw UnimplementedError();
  }

  @override
  Future<void> updateMeal(Meal meal) {
    // TODO: implement updateMeal
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Menu>>> getProviderMenus(String providerId) {
    // TODO: implement getProviderMenus
    throw UnimplementedError();
  }
}
