import 'package:core/nutrition/domain/models/nutrition_goals.dart';
import 'package:core/nutrition/domain/models/nutrition_log.dart';
import 'package:core/nutrition/domain/models/macro_nutrients.dart';

class DailyNutrition {
  final int remainingCalories;
  final double progress;
  final MacroNutrients macros;
  final List<NutritionLog> logs;
  final NutritionGoals goals;

  const DailyNutrition({
    required this.remainingCalories,
    required this.progress,
    required this.macros,
    required this.logs,
    required this.goals,
  });
}
