class MacroBreakdown {
  final double protein; // grams
  final double carbs; // grams
  final double fat; // grams
  final double? fiber; // grams
  final double? sugar; // grams

  const MacroBreakdown({
    required this.protein,
    required this.carbs,
    required this.fat,
    this.fiber,
    this.sugar,
  });

  int get totalCalories => (protein * 4 + carbs * 4 + fat * 9).round();

  double get proteinPercentage =>
      (protein * 4 / totalCalories * 100).roundToDouble();

  double get carbsPercentage =>
      (carbs * 4 / totalCalories * 100).roundToDouble();

  double get fatPercentage => (fat * 9 / totalCalories * 100).roundToDouble();

  MacroBreakdown copyWith({
    double? protein,
    double? carbs,
    double? fat,
    double? fiber,
    double? sugar,
  }) {
    return MacroBreakdown(
      protein: protein ?? this.protein,
      carbs: carbs ?? this.carbs,
      fat: fat ?? this.fat,
      fiber: fiber ?? this.fiber,
      sugar: sugar ?? this.sugar,
    );
  }

  Map<String, dynamic> toJson() => {
        'protein': protein,
        'carbs': carbs,
        'fat': fat,
        if (fiber != null) 'fiber': fiber,
        if (sugar != null) 'sugar': sugar,
      };

  factory MacroBreakdown.fromJson(Map<String, dynamic> json) => MacroBreakdown(
        protein: (json['protein'] as num).toDouble(),
        carbs: (json['carbs'] as num).toDouble(),
        fat: (json['fat'] as num).toDouble(),
        fiber: json['fiber'] != null ? (json['fiber'] as num).toDouble() : null,
        sugar: json['sugar'] != null ? (json['sugar'] as num).toDouble() : null,
      );
}
