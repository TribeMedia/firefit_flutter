import '../menu.dart';
import 'package:flutter/foundation.dart';
import 'meal_nutrition.dart';

extension MenuItemNutrition on MenuItem {
  MealNutrition? get nutrition {
    final data = this.data;
    debugPrint('data: $data');
    if (data == null) return null;

    try {
      return MealNutrition.fromJson(data);
    } catch (e) {
      // You might want to log this error or handle it differently
      return null;
    }
  }
}
