import 'package:core/nutrition/domain/models/dietary_restriction.dart';
import 'package:core/nutrition/domain/models/macro_nutrients.dart';

class MealTemplate {
  final String id;
  final String name;
  final String description;
  final List<String> mealTypes;
  final int baseCalories;
  final MacroNutrients baseMacros;
  final List<String> ingredients;
  final List<String> instructions;
  final String? imageUrl;
  final List<DietaryRestriction> suitableFor;
  final List<DietaryRestriction> notSuitableFor;
  final Map<String, List<String>> variations;
  final Map<String, dynamic>? metadata;

  const MealTemplate({
    required this.id,
    required this.name,
    required this.description,
    required this.mealTypes,
    required this.baseCalories,
    required this.baseMacros,
    required this.ingredients,
    required this.instructions,
    this.imageUrl,
    required this.suitableFor,
    required this.notSuitableFor,
    required this.variations,
    this.metadata,
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'description': description,
        'mealTypes': mealTypes,
        'baseCalories': baseCalories,
        'baseMacros': baseMacros.toJson(),
        'ingredients': ingredients,
        'instructions': instructions,
        if (imageUrl != null) 'imageUrl': imageUrl,
        'suitableFor': suitableFor.map((r) => r.toJson()).toList(),
        'notSuitableFor': notSuitableFor.map((r) => r.toJson()).toList(),
        'variations': variations,
        if (metadata != null) 'metadata': metadata,
      };

  factory MealTemplate.fromJson(Map<String, dynamic> json) => MealTemplate(
        id: json['id'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        mealTypes: (json['mealTypes'] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        baseCalories: json['baseCalories'] as int,
        baseMacros: MacroNutrients.fromJson(json['baseMacros']),
        ingredients: (json['ingredients'] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        instructions: (json['instructions'] as List<dynamic>)
            .map((e) => e as String)
            .toList(),
        imageUrl: json['imageUrl'] as String?,
        suitableFor: (json['suitableFor'] as List)
            .map((r) => DietaryRestriction.fromJson(r))
            .toList(),
        notSuitableFor: (json['notSuitableFor'] as List)
            .map((r) => DietaryRestriction.fromJson(r))
            .toList(),
        variations: (json['variations'] as Map<String, dynamic>).map(
          (k, v) => MapEntry(k, (v as List).map((e) => e as String).toList()),
        ),
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}
