import 'package:freezed_annotation/freezed_annotation.dart';

part 'meal_nutrition.freezed.dart';
part 'meal_nutrition.g.dart';

@freezed
class MealNutrition with _$MealNutrition {
  const factory MealNutrition({
    required String mealId,
    required String name,
    ServingSize? servingSize,
    required NutritionInfo totalNutrition,
    required List<MealComponent> components,
    List<Allergen>? allergens,
    List<DietaryInfo>? dietaryInfo,
  }) = _MealNutrition;

  factory MealNutrition.fromJson(Map<String, dynamic> json) =>
      _$MealNutritionFromJson(json);
}

@freezed
class ServingSize with _$ServingSize {
  const factory ServingSize({
    required double amount,
    required ServingUnit unit,
  }) = _ServingSize;

  factory ServingSize.fromJson(Map<String, dynamic> json) =>
      _$ServingSizeFromJson(json);
}

@freezed
class MealComponent with _$MealComponent {
  const factory MealComponent({
    required String name,
    ComponentAmount? amount,
    required NutritionInfo nutrition,
  }) = _MealComponent;

  factory MealComponent.fromJson(Map<String, dynamic> json) =>
      _$MealComponentFromJson(json);
}

@freezed
class ComponentAmount with _$ComponentAmount {
  const factory ComponentAmount({
    required double value,
    required ServingUnit unit,
  }) = _ComponentAmount;

  factory ComponentAmount.fromJson(Map<String, dynamic> json) =>
      _$ComponentAmountFromJson(json);
}

@freezed
class NutritionInfo with _$NutritionInfo {
  const factory NutritionInfo({
    required double calories,
    required Macronutrients macronutrients,
    required Micronutrients micronutrients,
  }) = _NutritionInfo;

  factory NutritionInfo.fromJson(Map<String, dynamic> json) =>
      _$NutritionInfoFromJson(json);
}

@freezed
class Macronutrients with _$Macronutrients {
  const factory Macronutrients({
    required Protein protein,
    required Carbohydrates carbohydrates,
    required Fats fats,
  }) = _Macronutrients;

  factory Macronutrients.fromJson(Map<String, dynamic> json) =>
      _$MacronutrientsFromJson(json);
}

@freezed
class Protein with _$Protein {
  const factory Protein({
    required double total,
    bool? complete,
  }) = _Protein;

  factory Protein.fromJson(Map<String, dynamic> json) =>
      _$ProteinFromJson(json);
}

@freezed
class Carbohydrates with _$Carbohydrates {
  const factory Carbohydrates({
    required double total,
    CarbBreakdown? breakdown,
    double? glycemicIndex,
    double? glycemicLoad,
  }) = _Carbohydrates;

  factory Carbohydrates.fromJson(Map<String, dynamic> json) =>
      _$CarbohydratesFromJson(json);
}

@freezed
class CarbBreakdown with _$CarbBreakdown {
  const factory CarbBreakdown({
    double? fiber,
    double? sugar,
    double? starch,
  }) = _CarbBreakdown;

  factory CarbBreakdown.fromJson(Map<String, dynamic> json) =>
      _$CarbBreakdownFromJson(json);
}

@freezed
class Fats with _$Fats {
  const factory Fats({
    required double total,
    FatBreakdown? breakdown,
  }) = _Fats;

  factory Fats.fromJson(Map<String, dynamic> json) => _$FatsFromJson(json);
}

@freezed
class FatBreakdown with _$FatBreakdown {
  const factory FatBreakdown({
    double? saturated,
    double? monounsaturated,
    double? polyunsaturated,
    double? trans,
    double? omega3,
    double? omega6,
  }) = _FatBreakdown;

  factory FatBreakdown.fromJson(Map<String, dynamic> json) =>
      _$FatBreakdownFromJson(json);
}

@freezed
class Micronutrients with _$Micronutrients {
  const factory Micronutrients({
    Vitamins? vitamins,
    Minerals? minerals,
  }) = _Micronutrients;

  factory Micronutrients.fromJson(Map<String, dynamic> json) =>
      _$MicronutrientsFromJson(json);
}

@freezed
class Vitamins with _$Vitamins {
  const factory Vitamins({
    double? vitaminA,
    double? vitaminC,
    double? vitaminD,
    double? vitaminE,
    double? vitaminK,
    double? thiamin,
    double? riboflavin,
    double? niacin,
    double? vitaminB6,
    double? vitaminB12,
    double? folate,
  }) = _Vitamins;

  factory Vitamins.fromJson(Map<String, dynamic> json) =>
      _$VitaminsFromJson(json);
}

@freezed
class Minerals with _$Minerals {
  const factory Minerals({
    double? calcium,
    double? iron,
    double? magnesium,
    double? phosphorus,
    double? potassium,
    double? sodium,
    double? zinc,
    double? selenium,
  }) = _Minerals;

  factory Minerals.fromJson(Map<String, dynamic> json) =>
      _$MineralsFromJson(json);
}

enum ServingUnit { g, oz, ml, cups, serving }

enum Allergen { gluten, dairy, nuts, soy, eggs, fish, shellfish, peanuts }

enum DietaryInfo {
  vegan,
  vegetarian,
  halal,
  kosher,
  @JsonValue('gluten-free')
  glutenFree,
  @JsonValue('dairy-free')
  dairyFree,
}
