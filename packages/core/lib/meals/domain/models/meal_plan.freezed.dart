// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealPlan _$MealPlanFromJson(Map<String, dynamic> json) {
  return _MealPlan.fromJson(json);
}

/// @nodoc
mixin _$MealPlan {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  List<PlannedMeal> get meals => throw _privateConstructorUsedError;
  Map<String, DietaryRestriction> get teamRestrictions =>
      throw _privateConstructorUsedError;
  int get totalCalories => throw _privateConstructorUsedError;
  MacroBreakdown get macros => throw _privateConstructorUsedError;
  List<MenuItem> get menuItems => throw _privateConstructorUsedError;
  bool get isTeamPlan => throw _privateConstructorUsedError;

  /// Serializes this MealPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealPlanCopyWith<MealPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealPlanCopyWith<$Res> {
  factory $MealPlanCopyWith(MealPlan value, $Res Function(MealPlan) then) =
      _$MealPlanCopyWithImpl<$Res, MealPlan>;
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime date,
      List<PlannedMeal> meals,
      Map<String, DietaryRestriction> teamRestrictions,
      int totalCalories,
      MacroBreakdown macros,
      List<MenuItem> menuItems,
      bool isTeamPlan});
}

/// @nodoc
class _$MealPlanCopyWithImpl<$Res, $Val extends MealPlan>
    implements $MealPlanCopyWith<$Res> {
  _$MealPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? meals = null,
    Object? teamRestrictions = null,
    Object? totalCalories = null,
    Object? macros = null,
    Object? menuItems = null,
    Object? isTeamPlan = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<PlannedMeal>,
      teamRestrictions: null == teamRestrictions
          ? _value.teamRestrictions
          : teamRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, DietaryRestriction>,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as int,
      macros: null == macros
          ? _value.macros
          : macros // ignore: cast_nullable_to_non_nullable
              as MacroBreakdown,
      menuItems: null == menuItems
          ? _value.menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      isTeamPlan: null == isTeamPlan
          ? _value.isTeamPlan
          : isTeamPlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealPlanImplCopyWith<$Res>
    implements $MealPlanCopyWith<$Res> {
  factory _$$MealPlanImplCopyWith(
          _$MealPlanImpl value, $Res Function(_$MealPlanImpl) then) =
      __$$MealPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      DateTime date,
      List<PlannedMeal> meals,
      Map<String, DietaryRestriction> teamRestrictions,
      int totalCalories,
      MacroBreakdown macros,
      List<MenuItem> menuItems,
      bool isTeamPlan});
}

/// @nodoc
class __$$MealPlanImplCopyWithImpl<$Res>
    extends _$MealPlanCopyWithImpl<$Res, _$MealPlanImpl>
    implements _$$MealPlanImplCopyWith<$Res> {
  __$$MealPlanImplCopyWithImpl(
      _$MealPlanImpl _value, $Res Function(_$MealPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? date = null,
    Object? meals = null,
    Object? teamRestrictions = null,
    Object? totalCalories = null,
    Object? macros = null,
    Object? menuItems = null,
    Object? isTeamPlan = null,
  }) {
    return _then(_$MealPlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<PlannedMeal>,
      teamRestrictions: null == teamRestrictions
          ? _value._teamRestrictions
          : teamRestrictions // ignore: cast_nullable_to_non_nullable
              as Map<String, DietaryRestriction>,
      totalCalories: null == totalCalories
          ? _value.totalCalories
          : totalCalories // ignore: cast_nullable_to_non_nullable
              as int,
      macros: null == macros
          ? _value.macros
          : macros // ignore: cast_nullable_to_non_nullable
              as MacroBreakdown,
      menuItems: null == menuItems
          ? _value._menuItems
          : menuItems // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      isTeamPlan: null == isTeamPlan
          ? _value.isTeamPlan
          : isTeamPlan // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealPlanImpl implements _MealPlan {
  const _$MealPlanImpl(
      {required this.id,
      required this.name,
      required this.date,
      required final List<PlannedMeal> meals,
      required final Map<String, DietaryRestriction> teamRestrictions,
      required this.totalCalories,
      required this.macros,
      required final List<MenuItem> menuItems,
      this.isTeamPlan = false})
      : _meals = meals,
        _teamRestrictions = teamRestrictions,
        _menuItems = menuItems;

  factory _$MealPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealPlanImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final DateTime date;
  final List<PlannedMeal> _meals;
  @override
  List<PlannedMeal> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  final Map<String, DietaryRestriction> _teamRestrictions;
  @override
  Map<String, DietaryRestriction> get teamRestrictions {
    if (_teamRestrictions is EqualUnmodifiableMapView) return _teamRestrictions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_teamRestrictions);
  }

  @override
  final int totalCalories;
  @override
  final MacroBreakdown macros;
  final List<MenuItem> _menuItems;
  @override
  List<MenuItem> get menuItems {
    if (_menuItems is EqualUnmodifiableListView) return _menuItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_menuItems);
  }

  @override
  @JsonKey()
  final bool isTeamPlan;

  @override
  String toString() {
    return 'MealPlan(id: $id, name: $name, date: $date, meals: $meals, teamRestrictions: $teamRestrictions, totalCalories: $totalCalories, macros: $macros, menuItems: $menuItems, isTeamPlan: $isTeamPlan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            const DeepCollectionEquality()
                .equals(other._teamRestrictions, _teamRestrictions) &&
            (identical(other.totalCalories, totalCalories) ||
                other.totalCalories == totalCalories) &&
            (identical(other.macros, macros) || other.macros == macros) &&
            const DeepCollectionEquality()
                .equals(other._menuItems, _menuItems) &&
            (identical(other.isTeamPlan, isTeamPlan) ||
                other.isTeamPlan == isTeamPlan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      date,
      const DeepCollectionEquality().hash(_meals),
      const DeepCollectionEquality().hash(_teamRestrictions),
      totalCalories,
      macros,
      const DeepCollectionEquality().hash(_menuItems),
      isTeamPlan);

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealPlanImplCopyWith<_$MealPlanImpl> get copyWith =>
      __$$MealPlanImplCopyWithImpl<_$MealPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealPlanImplToJson(
      this,
    );
  }
}

abstract class _MealPlan implements MealPlan {
  const factory _MealPlan(
      {required final String id,
      required final String name,
      required final DateTime date,
      required final List<PlannedMeal> meals,
      required final Map<String, DietaryRestriction> teamRestrictions,
      required final int totalCalories,
      required final MacroBreakdown macros,
      required final List<MenuItem> menuItems,
      final bool isTeamPlan}) = _$MealPlanImpl;

  factory _MealPlan.fromJson(Map<String, dynamic> json) =
      _$MealPlanImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  DateTime get date;
  @override
  List<PlannedMeal> get meals;
  @override
  Map<String, DietaryRestriction> get teamRestrictions;
  @override
  int get totalCalories;
  @override
  MacroBreakdown get macros;
  @override
  List<MenuItem> get menuItems;
  @override
  bool get isTeamPlan;

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealPlanImplCopyWith<_$MealPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
