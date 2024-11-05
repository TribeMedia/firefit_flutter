class MacroNutrients {
  final double carbs;
  final double protein;
  final double fat;
  final double carbsGoal;
  final double proteinGoal;
  final double fatGoal;
  final double? fiber;
  final double? sugar;
  final Map<String, double>? additionalNutrients;

  const MacroNutrients({
    required this.carbs,
    required this.protein,
    required this.fat,
    required this.carbsGoal,
    required this.proteinGoal,
    required this.fatGoal,
    this.fiber,
    this.sugar,
    this.additionalNutrients,
  });

  double get carbsPercentage => carbs / carbsGoal;
  double get proteinPercentage => protein / proteinGoal;
  double get fatPercentage => fat / fatGoal;
  int get totalCalories => ((carbs * 4) + (protein * 4) + (fat * 9)).round();

  MacroNutrients copyWith({
    double? carbs,
    double? protein,
    double? fat,
    double? carbsGoal,
    double? proteinGoal,
    double? fatGoal,
    double? fiber,
    double? sugar,
    Map<String, double>? additionalNutrients,
  }) {
    return MacroNutrients(
      carbs: carbs ?? this.carbs,
      protein: protein ?? this.protein,
      fat: fat ?? this.fat,
      carbsGoal: carbsGoal ?? this.carbsGoal,
      proteinGoal: proteinGoal ?? this.proteinGoal,
      fatGoal: fatGoal ?? this.fatGoal,
      fiber: fiber ?? this.fiber,
      sugar: sugar ?? this.sugar,
      additionalNutrients: additionalNutrients ?? this.additionalNutrients,
    );
  }

  Map<String, dynamic> toJson() => {
        'carbs': carbs,
        'protein': protein,
        'fat': fat,
        'carbsGoal': carbsGoal,
        'proteinGoal': proteinGoal,
        'fatGoal': fatGoal,
        if (fiber != null) 'fiber': fiber,
        if (sugar != null) 'sugar': sugar,
        if (additionalNutrients != null)
          'additionalNutrients': additionalNutrients,
      };

  factory MacroNutrients.fromJson(Map<String, dynamic> json) => MacroNutrients(
        carbs: (json['carbs'] as num).toDouble(),
        protein: (json['protein'] as num).toDouble(),
        fat: (json['fat'] as num).toDouble(),
        carbsGoal: (json['carbsGoal'] as num).toDouble(),
        proteinGoal: (json['proteinGoal'] as num).toDouble(),
        fatGoal: (json['fatGoal'] as num).toDouble(),
        fiber: json['fiber'] != null ? (json['fiber'] as num).toDouble() : null,
        sugar: json['sugar'] != null ? (json['sugar'] as num).toDouble() : null,
        additionalNutrients:
            (json['additionalNutrients'] as Map<String, dynamic>?)
                ?.map((k, v) => MapEntry(k, (v as num).toDouble())),
      );
}
