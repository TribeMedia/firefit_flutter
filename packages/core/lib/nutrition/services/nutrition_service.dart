import 'package:core/nutrition/domain/models/daily_nutrition.dart';
import 'package:core/nutrition/domain/models/macro_breakdown.dart';
import 'package:core/nutrition/domain/models/nutrition_goals.dart';
import 'package:core/nutrition/domain/models/nutrition_intake.dart';
import 'package:core/nutrition/domain/models/nutrition_log.dart';
import 'package:core/common/models/date_time_range.dart';

abstract class NutritionService {
  Future<DailyNutrition?> getDailyNutrition();
  Future<void> updateNutritionGoals(NutritionGoals goals);
  Future<void> logNutritionIntake(NutritionIntake intake);
  Future<List<NutritionLog>> getNutritionHistory(DateTimeRange range);
  Future<MacroBreakdown> calculateMacroBreakdown(int targetCalories);
}
