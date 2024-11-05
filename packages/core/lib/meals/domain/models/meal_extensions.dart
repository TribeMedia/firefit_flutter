import 'package:core/meals/domain/models/meal.dart';
import 'package:core/meals/domain/models/nutrition/menu_item_nutrition_extension.dart';
import 'package:core/meals/domain/models/nutrition/meal_nutrition.dart';

extension MealAnalytics on Meal {
  double get totalCost {
    return items.fold(0.0, (total, menuItem) {
      return total + (menuItem.price ?? 0.0);
    });
  }

  ({List<MealNutrition> itemNutrition, String aiSummary}) get nutritionSummary {
    final nutritionList =
        items.map((item) => item.nutrition).whereType<MealNutrition>().toList();

    // Calculate totals for the summary
    final totalCalories = nutritionList.fold(
        0.0, (sum, nutrition) => sum + nutrition.totalNutrition.calories);
    final totalProtein = nutritionList.fold(
        0.0,
        (sum, nutrition) =>
            sum + nutrition.totalNutrition.macronutrients.protein.total);
    final totalCarbs = nutritionList.fold(
        0.0,
        (sum, nutrition) =>
            sum + nutrition.totalNutrition.macronutrients.carbohydrates.total);
    final totalFat = nutritionList.fold(
        0.0,
        (sum, nutrition) =>
            sum + nutrition.totalNutrition.macronutrients.fats.total);

    // Generate a markdown-formatted summary
    final summary = '''
## Meal Summary
${items.length} items${eatenAt != null ? ' | Eaten at ${eatenAt!.toString()}' : ''}

### Nutritional Overview
* **Total Calories:** ${totalCalories.round()} kcal

### Macronutrient Breakdown
* **Protein:** ${totalProtein.round()}g
* **Carbohydrates:** ${totalCarbs.round()}g
* **Fat:** ${totalFat.round()}g

### Analysis
This meal follows a **${_characterizeDiet(totalProtein, totalCarbs, totalFat)}** pattern with a protein-to-carb ratio of **${(totalProtein / totalCarbs).toStringAsFixed(2)}**.

${notes != null ? '### Notes\n${notes!}' : ''}
''';

    return (itemNutrition: nutritionList, aiSummary: summary);
  }

  String _characterizeDiet(double protein, double carbs, double fat) {
    final totalMacros = protein + carbs + fat;
    final proteinPercentage = (protein * 4 / totalMacros) * 100;
    final carbPercentage = (carbs * 4 / totalMacros) * 100;
    final fatPercentage = (fat * 9 / totalMacros) * 100;

    if (carbPercentage < 25) return 'low-carb';
    if (proteinPercentage > 30) return 'high-protein';
    if (fatPercentage > 35) return 'high-fat';
    return 'balanced';
  }
}
