// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_nutrition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealNutritionImpl _$$MealNutritionImplFromJson(Map<String, dynamic> json) =>
    _$MealNutritionImpl(
      mealId: json['mealId'] as String,
      name: json['name'] as String,
      servingSize: json['servingSize'] == null
          ? null
          : ServingSize.fromJson(json['servingSize'] as Map<String, dynamic>),
      totalNutrition: NutritionInfo.fromJson(
          json['totalNutrition'] as Map<String, dynamic>),
      components: (json['components'] as List<dynamic>)
          .map((e) => MealComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      allergens: (json['allergens'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$AllergenEnumMap, e))
          .toList(),
      dietaryInfo: (json['dietaryInfo'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$DietaryInfoEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$MealNutritionImplToJson(_$MealNutritionImpl instance) =>
    <String, dynamic>{
      'mealId': instance.mealId,
      'name': instance.name,
      'servingSize': instance.servingSize,
      'totalNutrition': instance.totalNutrition,
      'components': instance.components,
      'allergens':
          instance.allergens?.map((e) => _$AllergenEnumMap[e]!).toList(),
      'dietaryInfo':
          instance.dietaryInfo?.map((e) => _$DietaryInfoEnumMap[e]!).toList(),
    };

const _$AllergenEnumMap = {
  Allergen.gluten: 'gluten',
  Allergen.dairy: 'dairy',
  Allergen.nuts: 'nuts',
  Allergen.soy: 'soy',
  Allergen.eggs: 'eggs',
  Allergen.fish: 'fish',
  Allergen.shellfish: 'shellfish',
  Allergen.peanuts: 'peanuts',
};

const _$DietaryInfoEnumMap = {
  DietaryInfo.vegan: 'vegan',
  DietaryInfo.vegetarian: 'vegetarian',
  DietaryInfo.halal: 'halal',
  DietaryInfo.kosher: 'kosher',
  DietaryInfo.glutenFree: 'gluten-free',
  DietaryInfo.dairyFree: 'dairy-free',
};

_$ServingSizeImpl _$$ServingSizeImplFromJson(Map<String, dynamic> json) =>
    _$ServingSizeImpl(
      amount: (json['amount'] as num).toDouble(),
      unit: $enumDecode(_$ServingUnitEnumMap, json['unit']),
    );

Map<String, dynamic> _$$ServingSizeImplToJson(_$ServingSizeImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'unit': _$ServingUnitEnumMap[instance.unit]!,
    };

const _$ServingUnitEnumMap = {
  ServingUnit.g: 'g',
  ServingUnit.oz: 'oz',
  ServingUnit.ml: 'ml',
  ServingUnit.cups: 'cups',
  ServingUnit.serving: 'serving',
};

_$MealComponentImpl _$$MealComponentImplFromJson(Map<String, dynamic> json) =>
    _$MealComponentImpl(
      name: json['name'] as String,
      amount: json['amount'] == null
          ? null
          : ComponentAmount.fromJson(json['amount'] as Map<String, dynamic>),
      nutrition:
          NutritionInfo.fromJson(json['nutrition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MealComponentImplToJson(_$MealComponentImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'nutrition': instance.nutrition,
    };

_$ComponentAmountImpl _$$ComponentAmountImplFromJson(
        Map<String, dynamic> json) =>
    _$ComponentAmountImpl(
      value: (json['value'] as num).toDouble(),
      unit: $enumDecode(_$ServingUnitEnumMap, json['unit']),
    );

Map<String, dynamic> _$$ComponentAmountImplToJson(
        _$ComponentAmountImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'unit': _$ServingUnitEnumMap[instance.unit]!,
    };

_$NutritionInfoImpl _$$NutritionInfoImplFromJson(Map<String, dynamic> json) =>
    _$NutritionInfoImpl(
      calories: (json['calories'] as num).toDouble(),
      macronutrients: Macronutrients.fromJson(
          json['macronutrients'] as Map<String, dynamic>),
      micronutrients: Micronutrients.fromJson(
          json['micronutrients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NutritionInfoImplToJson(_$NutritionInfoImpl instance) =>
    <String, dynamic>{
      'calories': instance.calories,
      'macronutrients': instance.macronutrients,
      'micronutrients': instance.micronutrients,
    };

_$MacronutrientsImpl _$$MacronutrientsImplFromJson(Map<String, dynamic> json) =>
    _$MacronutrientsImpl(
      protein: Protein.fromJson(json['protein'] as Map<String, dynamic>),
      carbohydrates:
          Carbohydrates.fromJson(json['carbohydrates'] as Map<String, dynamic>),
      fats: Fats.fromJson(json['fats'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MacronutrientsImplToJson(
        _$MacronutrientsImpl instance) =>
    <String, dynamic>{
      'protein': instance.protein,
      'carbohydrates': instance.carbohydrates,
      'fats': instance.fats,
    };

_$ProteinImpl _$$ProteinImplFromJson(Map<String, dynamic> json) =>
    _$ProteinImpl(
      total: (json['total'] as num).toDouble(),
      complete: json['complete'] as bool?,
    );

Map<String, dynamic> _$$ProteinImplToJson(_$ProteinImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'complete': instance.complete,
    };

_$CarbohydratesImpl _$$CarbohydratesImplFromJson(Map<String, dynamic> json) =>
    _$CarbohydratesImpl(
      total: (json['total'] as num).toDouble(),
      breakdown: json['breakdown'] == null
          ? null
          : CarbBreakdown.fromJson(json['breakdown'] as Map<String, dynamic>),
      glycemicIndex: (json['glycemicIndex'] as num?)?.toDouble(),
      glycemicLoad: (json['glycemicLoad'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CarbohydratesImplToJson(_$CarbohydratesImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'breakdown': instance.breakdown,
      'glycemicIndex': instance.glycemicIndex,
      'glycemicLoad': instance.glycemicLoad,
    };

_$CarbBreakdownImpl _$$CarbBreakdownImplFromJson(Map<String, dynamic> json) =>
    _$CarbBreakdownImpl(
      fiber: (json['fiber'] as num?)?.toDouble(),
      sugar: (json['sugar'] as num?)?.toDouble(),
      starch: (json['starch'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$CarbBreakdownImplToJson(_$CarbBreakdownImpl instance) =>
    <String, dynamic>{
      'fiber': instance.fiber,
      'sugar': instance.sugar,
      'starch': instance.starch,
    };

_$FatsImpl _$$FatsImplFromJson(Map<String, dynamic> json) => _$FatsImpl(
      total: (json['total'] as num).toDouble(),
      breakdown: json['breakdown'] == null
          ? null
          : FatBreakdown.fromJson(json['breakdown'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FatsImplToJson(_$FatsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'breakdown': instance.breakdown,
    };

_$FatBreakdownImpl _$$FatBreakdownImplFromJson(Map<String, dynamic> json) =>
    _$FatBreakdownImpl(
      saturated: (json['saturated'] as num?)?.toDouble(),
      monounsaturated: (json['monounsaturated'] as num?)?.toDouble(),
      polyunsaturated: (json['polyunsaturated'] as num?)?.toDouble(),
      trans: (json['trans'] as num?)?.toDouble(),
      omega3: (json['omega3'] as num?)?.toDouble(),
      omega6: (json['omega6'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$FatBreakdownImplToJson(_$FatBreakdownImpl instance) =>
    <String, dynamic>{
      'saturated': instance.saturated,
      'monounsaturated': instance.monounsaturated,
      'polyunsaturated': instance.polyunsaturated,
      'trans': instance.trans,
      'omega3': instance.omega3,
      'omega6': instance.omega6,
    };

_$MicronutrientsImpl _$$MicronutrientsImplFromJson(Map<String, dynamic> json) =>
    _$MicronutrientsImpl(
      vitamins: json['vitamins'] == null
          ? null
          : Vitamins.fromJson(json['vitamins'] as Map<String, dynamic>),
      minerals: json['minerals'] == null
          ? null
          : Minerals.fromJson(json['minerals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MicronutrientsImplToJson(
        _$MicronutrientsImpl instance) =>
    <String, dynamic>{
      'vitamins': instance.vitamins,
      'minerals': instance.minerals,
    };

_$VitaminsImpl _$$VitaminsImplFromJson(Map<String, dynamic> json) =>
    _$VitaminsImpl(
      vitaminA: (json['vitaminA'] as num?)?.toDouble(),
      vitaminC: (json['vitaminC'] as num?)?.toDouble(),
      vitaminD: (json['vitaminD'] as num?)?.toDouble(),
      vitaminE: (json['vitaminE'] as num?)?.toDouble(),
      vitaminK: (json['vitaminK'] as num?)?.toDouble(),
      thiamin: (json['thiamin'] as num?)?.toDouble(),
      riboflavin: (json['riboflavin'] as num?)?.toDouble(),
      niacin: (json['niacin'] as num?)?.toDouble(),
      vitaminB6: (json['vitaminB6'] as num?)?.toDouble(),
      vitaminB12: (json['vitaminB12'] as num?)?.toDouble(),
      folate: (json['folate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$VitaminsImplToJson(_$VitaminsImpl instance) =>
    <String, dynamic>{
      'vitaminA': instance.vitaminA,
      'vitaminC': instance.vitaminC,
      'vitaminD': instance.vitaminD,
      'vitaminE': instance.vitaminE,
      'vitaminK': instance.vitaminK,
      'thiamin': instance.thiamin,
      'riboflavin': instance.riboflavin,
      'niacin': instance.niacin,
      'vitaminB6': instance.vitaminB6,
      'vitaminB12': instance.vitaminB12,
      'folate': instance.folate,
    };

_$MineralsImpl _$$MineralsImplFromJson(Map<String, dynamic> json) =>
    _$MineralsImpl(
      calcium: (json['calcium'] as num?)?.toDouble(),
      iron: (json['iron'] as num?)?.toDouble(),
      magnesium: (json['magnesium'] as num?)?.toDouble(),
      phosphorus: (json['phosphorus'] as num?)?.toDouble(),
      potassium: (json['potassium'] as num?)?.toDouble(),
      sodium: (json['sodium'] as num?)?.toDouble(),
      zinc: (json['zinc'] as num?)?.toDouble(),
      selenium: (json['selenium'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MineralsImplToJson(_$MineralsImpl instance) =>
    <String, dynamic>{
      'calcium': instance.calcium,
      'iron': instance.iron,
      'magnesium': instance.magnesium,
      'phosphorus': instance.phosphorus,
      'potassium': instance.potassium,
      'sodium': instance.sodium,
      'zinc': instance.zinc,
      'selenium': instance.selenium,
    };
