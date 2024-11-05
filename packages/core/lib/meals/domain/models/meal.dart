import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:core/meals/domain/models/menu.dart';

part 'meal.freezed.dart';
part 'meal.g.dart';

@freezed
class Meal with _$Meal {
  const factory Meal({
    required String id,
    required String name,
    String? description,
    required List<MenuItem> items,
    required String imageUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
    Map<String, dynamic>? data,
    DateTime? eatenAt,
    String? notes,
  }) = _Meal;

  factory Meal.fromJson(Map<String, dynamic> json) =>
      _$MealFromJson(json);

}
