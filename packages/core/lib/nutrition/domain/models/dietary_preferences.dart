import 'package:core/common/models/time_of_day.dart';

class DietaryPreferences {
  final List<String> allergies;
  final List<String> restrictions;
  final List<String> preferences;
  final List<String> dislikedIngredients;
  final CalorieGoals calorieGoals;
  final MacroTargets macroTargets;
  final MealTimingPreferences mealTiming;
  final bool isTeamVisible;
  final Map<String, dynamic>? metadata;

  const DietaryPreferences({
    this.allergies = const [],
    this.restrictions = const [],
    this.preferences = const [],
    this.dislikedIngredients = const [],
    required this.calorieGoals,
    required this.macroTargets,
    required this.mealTiming,
    this.isTeamVisible = true,
    this.metadata,
  });

  DietaryPreferences copyWith({
    List<String>? allergies,
    List<String>? restrictions,
    List<String>? preferences,
    List<String>? dislikedIngredients,
    CalorieGoals? calorieGoals,
    MacroTargets? macroTargets,
    MealTimingPreferences? mealTiming,
    bool? isTeamVisible,
    Map<String, dynamic>? metadata,
  }) {
    return DietaryPreferences(
      allergies: allergies ?? this.allergies,
      restrictions: restrictions ?? this.restrictions,
      preferences: preferences ?? this.preferences,
      dislikedIngredients: dislikedIngredients ?? this.dislikedIngredients,
      calorieGoals: calorieGoals ?? this.calorieGoals,
      macroTargets: macroTargets ?? this.macroTargets,
      mealTiming: mealTiming ?? this.mealTiming,
      isTeamVisible: isTeamVisible ?? this.isTeamVisible,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() => {
        'allergies': allergies,
        'restrictions': restrictions,
        'preferences': preferences,
        'dislikedIngredients': dislikedIngredients,
        'calorieGoals': calorieGoals.toJson(),
        'macroTargets': macroTargets.toJson(),
        'mealTiming': mealTiming.toJson(),
        'isTeamVisible': isTeamVisible,
        if (metadata != null) 'metadata': metadata,
      };

  factory DietaryPreferences.fromJson(Map<String, dynamic> json) =>
      DietaryPreferences(
        allergies: (json['allergies'] as List).map((e) => e as String).toList(),
        restrictions:
            (json['restrictions'] as List).map((e) => e as String).toList(),
        preferences:
            (json['preferences'] as List).map((e) => e as String).toList(),
        dislikedIngredients: (json['dislikedIngredients'] as List)
            .map((e) => e as String)
            .toList(),
        calorieGoals: CalorieGoals.fromJson(json['calorieGoals']),
        macroTargets: MacroTargets.fromJson(json['macroTargets']),
        mealTiming: MealTimingPreferences.fromJson(json['mealTiming']),
        isTeamVisible: json['isTeamVisible'] as bool? ?? true,
        metadata: json['metadata'] as Map<String, dynamic>?,
      );
}

class CalorieGoals {
  final int dailyTarget;
  final int minDaily;
  final int maxDaily;
  final Map<String, int> mealTargets;

  const CalorieGoals({
    required this.dailyTarget,
    required this.minDaily,
    required this.maxDaily,
    required this.mealTargets,
  });

  Map<String, dynamic> toJson() => {
        'dailyTarget': dailyTarget,
        'minDaily': minDaily,
        'maxDaily': maxDaily,
        'mealTargets': mealTargets,
      };

  factory CalorieGoals.fromJson(Map<String, dynamic> json) => CalorieGoals(
        dailyTarget: json['dailyTarget'] as int,
        minDaily: json['minDaily'] as int,
        maxDaily: json['maxDaily'] as int,
        mealTargets: Map<String, int>.from(json['mealTargets']),
      );
}

class MacroTargets {
  final double proteinPercentage;
  final double carbsPercentage;
  final double fatPercentage;
  final int? minProteinGrams;
  final int? minFiberGrams;

  const MacroTargets({
    required this.proteinPercentage,
    required this.carbsPercentage,
    required this.fatPercentage,
    this.minProteinGrams,
    this.minFiberGrams,
  });

  Map<String, dynamic> toJson() => {
        'proteinPercentage': proteinPercentage,
        'carbsPercentage': carbsPercentage,
        'fatPercentage': fatPercentage,
        if (minProteinGrams != null) 'minProteinGrams': minProteinGrams,
        if (minFiberGrams != null) 'minFiberGrams': minFiberGrams,
      };

  factory MacroTargets.fromJson(Map<String, dynamic> json) => MacroTargets(
        proteinPercentage: (json['proteinPercentage'] as num).toDouble(),
        carbsPercentage: (json['carbsPercentage'] as num).toDouble(),
        fatPercentage: (json['fatPercentage'] as num).toDouble(),
        minProteinGrams: json['minProteinGrams'] as int?,
        minFiberGrams: json['minFiberGrams'] as int?,
      );
}

class MealTimingPreferences {
  final List<TimeOfDay> preferredMealTimes;
  final int minMealsPerDay;
  final int maxMealsPerDay;
  final Duration minTimeBetweenMeals;
  final TimeOfDay? firstMealTime;
  final TimeOfDay? lastMealTime;

  const MealTimingPreferences({
    required this.preferredMealTimes,
    this.minMealsPerDay = 3,
    this.maxMealsPerDay = 6,
    this.minTimeBetweenMeals = const Duration(hours: 2),
    this.firstMealTime,
    this.lastMealTime,
  });

  Map<String, dynamic> toJson() => {
        'preferredMealTimes':
            preferredMealTimes.map((t) => '${t.hour}:${t.minute}').toList(),
        'minMealsPerDay': minMealsPerDay,
        'maxMealsPerDay': maxMealsPerDay,
        'minTimeBetweenMeals': minTimeBetweenMeals.inMinutes,
        if (firstMealTime != null)
          'firstMealTime': '${firstMealTime!.hour}:${firstMealTime!.minute}',
        if (lastMealTime != null)
          'lastMealTime': '${lastMealTime!.hour}:${lastMealTime!.minute}',
      };

  factory MealTimingPreferences.fromJson(Map<String, dynamic> json) {
    TimeOfDay parseTimeOfDay(String timeString) {
      final parts = timeString.split(':');
      return TimeOfDay(
        hour: int.parse(parts[0]),
        minute: int.parse(parts[1]),
      );
    }

    return MealTimingPreferences(
      preferredMealTimes: (json['preferredMealTimes'] as List)
          .map((t) => parseTimeOfDay(t as String))
          .toList(),
      minMealsPerDay: json['minMealsPerDay'] as int? ?? 3,
      maxMealsPerDay: json['maxMealsPerDay'] as int? ?? 6,
      minTimeBetweenMeals:
          Duration(minutes: json['minTimeBetweenMeals'] as int? ?? 120),
      firstMealTime: json['firstMealTime'] != null
          ? parseTimeOfDay(json['firstMealTime'] as String)
          : null,
      lastMealTime: json['lastMealTime'] != null
          ? parseTimeOfDay(json['lastMealTime'] as String)
          : null,
    );
  }
}
