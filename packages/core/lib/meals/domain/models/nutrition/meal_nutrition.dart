class MealNutrition {
  final TotalNutrition totalNutrition;
  final List<Allergen>? allergens;
  final List<DietaryInfo>? dietaryInfo;

  MealNutrition({
    required this.totalNutrition,
    this.allergens,
    this.dietaryInfo,
  });
}

class TotalNutrition {
  final double calories;
  final Macronutrients macronutrients;
  final Micronutrients micronutrients;

  TotalNutrition({
    required this.calories,
    required this.macronutrients,
    required this.micronutrients,
  });
}

class Macronutrients {
  final double protein;
  final double carbohydrates;
  final double fats;

  Macronutrients({
    required this.protein,
    required this.carbohydrates,
    required this.fats,
  });
}

class Micronutrients {
  final Map<String, double>? vitamins;
  final Map<String, double>? minerals;

  Micronutrients({
    this.vitamins,
    this.minerals,
  });
}

class Allergen {
  final String name;

  Allergen({required this.name});
}

class DietaryInfo {
  final String name;

  DietaryInfo({required this.name});
}
