import 'package:core/meals/domain/models/nutrition/meal_nutrition.dart';
import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

class NutritionInfoWidget extends StatelessWidget {
  final MealNutrition nutrition;

  const NutritionInfoWidget({super.key, required this.nutrition});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildNutritionRow('Calories',
            '${nutrition.totalNutrition.calories.toStringAsFixed(0)} kcal'),
        SizedBox(height: 8),
        _buildMacronutrients(context),
        SizedBox(height: 16),
        _buildMicronutrients(context),
        if (nutrition.allergens?.isNotEmpty ?? false) ...[
          SizedBox(height: 16),
          _buildAllergens(context),
        ],
        if (nutrition.dietaryInfo?.isNotEmpty ?? false) ...[
          SizedBox(height: 16),
          _buildDietaryInfo(context),
        ],
      ],
    );
  }

  Widget _buildNutritionRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(value),
      ],
    );
  }

  Widget _buildMacronutrients(BuildContext context) {
    final macros = nutrition.totalNutrition.macronutrients;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Macronutrients', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(height: 4),
        _buildNutritionRow('Protein', '${macros.protein.toStringAsFixed(1)}g'),
        _buildNutritionRow(
            'Carbohydrates', '${macros.carbohydrates.toStringAsFixed(1)}g'),
        _buildNutritionRow('Fat', '${macros.fats.toStringAsFixed(1)}g'),
      ],
    );
  }

  Widget _buildMicronutrients(BuildContext context) {
    final micros = nutrition.totalNutrition.micronutrients;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Micronutrients', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(height: 4),
        if (micros.vitamins != null) ...[
          Text('Vitamins:', style: TextStyle(fontWeight: FontWeight.bold)),
          ...micros.vitamins!.entries.map((entry) => _buildNutritionRow(
              entry.key.capitalize(), '${entry.value.toStringAsFixed(1)}mg')),
        ],
        SizedBox(height: 8),
        if (micros.minerals != null) ...[
          Text('Minerals:', style: TextStyle(fontWeight: FontWeight.bold)),
          ...micros.minerals!.entries.map((entry) => _buildNutritionRow(
              entry.key.capitalize(), '${entry.value.toStringAsFixed(1)}mg')),
        ],
      ],
    );
  }

  Widget _buildAllergens(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Allergens', style: Theme.of(context).textTheme.titleSmall),
        SizedBox(height: 4),
        Wrap(
          spacing: 8,
          children: nutrition.allergens!
              .map((allergen) => ShadBadge.destructive(
                    child: Text(allergen.name.capitalize()),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildDietaryInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Dietary Information',
            style: Theme.of(context).textTheme.titleSmall),
        SizedBox(height: 4),
        Wrap(
          spacing: 8,
          children: nutrition.dietaryInfo!
              .map((info) => ShadBadge.secondary(
                    child: Text(info.name.capitalize()),
                  ))
              .toList(),
        ),
      ],
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
