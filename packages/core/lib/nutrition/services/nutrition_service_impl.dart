import 'package:core/nutrition/domain/models/daily_nutrition.dart';
import 'package:core/nutrition/domain/models/macro_breakdown.dart';
import 'package:core/nutrition/domain/models/nutrition_goals.dart';
import 'package:core/nutrition/domain/models/nutrition_intake.dart';
import 'package:core/nutrition/domain/models/nutrition_log.dart';
import 'package:core/nutrition/services/nutrition_service.dart';
import 'package:core/common/models/date_time_range.dart';

class NutritionServiceImpl extends NutritionService {
  @override
  Future<DailyNutrition?> getDailyNutrition() async {
    return null;
  }

  @override
  Future<MacroBreakdown> calculateMacroBreakdown(int targetCalories) {
    // TODO: implement calculateMacroBreakdown
    throw UnimplementedError();
  }

  @override
  Future<List<NutritionLog>> getNutritionHistory(DateTimeRange range) {
    // TODO: implement getNutritionHistory
    throw UnimplementedError();
  }

  @override
  Future<void> logNutritionIntake(NutritionIntake intake) {
    // TODO: implement logNutritionIntake
    throw UnimplementedError();
  }

  @override
  Future<void> updateNutritionGoals(NutritionGoals goals) {
    // TODO: implement updateNutritionGoals
    throw UnimplementedError();
  }
}
