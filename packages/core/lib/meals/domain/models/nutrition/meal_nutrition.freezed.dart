// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_nutrition.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealNutrition _$MealNutritionFromJson(Map<String, dynamic> json) {
  return _MealNutrition.fromJson(json);
}

/// @nodoc
mixin _$MealNutrition {
  String get mealId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ServingSize? get servingSize => throw _privateConstructorUsedError;
  NutritionInfo get totalNutrition => throw _privateConstructorUsedError;
  List<MealComponent> get components => throw _privateConstructorUsedError;
  List<Allergen>? get allergens => throw _privateConstructorUsedError;
  List<DietaryInfo>? get dietaryInfo => throw _privateConstructorUsedError;

  /// Serializes this MealNutrition to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealNutrition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealNutritionCopyWith<MealNutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealNutritionCopyWith<$Res> {
  factory $MealNutritionCopyWith(
          MealNutrition value, $Res Function(MealNutrition) then) =
      _$MealNutritionCopyWithImpl<$Res, MealNutrition>;
  @useResult
  $Res call(
      {String mealId,
      String name,
      ServingSize? servingSize,
      NutritionInfo totalNutrition,
      List<MealComponent> components,
      List<Allergen>? allergens,
      List<DietaryInfo>? dietaryInfo});

  $ServingSizeCopyWith<$Res>? get servingSize;
  $NutritionInfoCopyWith<$Res> get totalNutrition;
}

/// @nodoc
class _$MealNutritionCopyWithImpl<$Res, $Val extends MealNutrition>
    implements $MealNutritionCopyWith<$Res> {
  _$MealNutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealNutrition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealId = null,
    Object? name = null,
    Object? servingSize = freezed,
    Object? totalNutrition = null,
    Object? components = null,
    Object? allergens = freezed,
    Object? dietaryInfo = freezed,
  }) {
    return _then(_value.copyWith(
      mealId: null == mealId
          ? _value.mealId
          : mealId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      servingSize: freezed == servingSize
          ? _value.servingSize
          : servingSize // ignore: cast_nullable_to_non_nullable
              as ServingSize?,
      totalNutrition: null == totalNutrition
          ? _value.totalNutrition
          : totalNutrition // ignore: cast_nullable_to_non_nullable
              as NutritionInfo,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<MealComponent>,
      allergens: freezed == allergens
          ? _value.allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<Allergen>?,
      dietaryInfo: freezed == dietaryInfo
          ? _value.dietaryInfo
          : dietaryInfo // ignore: cast_nullable_to_non_nullable
              as List<DietaryInfo>?,
    ) as $Val);
  }

  /// Create a copy of MealNutrition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServingSizeCopyWith<$Res>? get servingSize {
    if (_value.servingSize == null) {
      return null;
    }

    return $ServingSizeCopyWith<$Res>(_value.servingSize!, (value) {
      return _then(_value.copyWith(servingSize: value) as $Val);
    });
  }

  /// Create a copy of MealNutrition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionInfoCopyWith<$Res> get totalNutrition {
    return $NutritionInfoCopyWith<$Res>(_value.totalNutrition, (value) {
      return _then(_value.copyWith(totalNutrition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MealNutritionImplCopyWith<$Res>
    implements $MealNutritionCopyWith<$Res> {
  factory _$$MealNutritionImplCopyWith(
          _$MealNutritionImpl value, $Res Function(_$MealNutritionImpl) then) =
      __$$MealNutritionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String mealId,
      String name,
      ServingSize? servingSize,
      NutritionInfo totalNutrition,
      List<MealComponent> components,
      List<Allergen>? allergens,
      List<DietaryInfo>? dietaryInfo});

  @override
  $ServingSizeCopyWith<$Res>? get servingSize;
  @override
  $NutritionInfoCopyWith<$Res> get totalNutrition;
}

/// @nodoc
class __$$MealNutritionImplCopyWithImpl<$Res>
    extends _$MealNutritionCopyWithImpl<$Res, _$MealNutritionImpl>
    implements _$$MealNutritionImplCopyWith<$Res> {
  __$$MealNutritionImplCopyWithImpl(
      _$MealNutritionImpl _value, $Res Function(_$MealNutritionImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealNutrition
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mealId = null,
    Object? name = null,
    Object? servingSize = freezed,
    Object? totalNutrition = null,
    Object? components = null,
    Object? allergens = freezed,
    Object? dietaryInfo = freezed,
  }) {
    return _then(_$MealNutritionImpl(
      mealId: null == mealId
          ? _value.mealId
          : mealId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      servingSize: freezed == servingSize
          ? _value.servingSize
          : servingSize // ignore: cast_nullable_to_non_nullable
              as ServingSize?,
      totalNutrition: null == totalNutrition
          ? _value.totalNutrition
          : totalNutrition // ignore: cast_nullable_to_non_nullable
              as NutritionInfo,
      components: null == components
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<MealComponent>,
      allergens: freezed == allergens
          ? _value._allergens
          : allergens // ignore: cast_nullable_to_non_nullable
              as List<Allergen>?,
      dietaryInfo: freezed == dietaryInfo
          ? _value._dietaryInfo
          : dietaryInfo // ignore: cast_nullable_to_non_nullable
              as List<DietaryInfo>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealNutritionImpl implements _MealNutrition {
  const _$MealNutritionImpl(
      {required this.mealId,
      required this.name,
      this.servingSize,
      required this.totalNutrition,
      required final List<MealComponent> components,
      final List<Allergen>? allergens,
      final List<DietaryInfo>? dietaryInfo})
      : _components = components,
        _allergens = allergens,
        _dietaryInfo = dietaryInfo;

  factory _$MealNutritionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealNutritionImplFromJson(json);

  @override
  final String mealId;
  @override
  final String name;
  @override
  final ServingSize? servingSize;
  @override
  final NutritionInfo totalNutrition;
  final List<MealComponent> _components;
  @override
  List<MealComponent> get components {
    if (_components is EqualUnmodifiableListView) return _components;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  final List<Allergen>? _allergens;
  @override
  List<Allergen>? get allergens {
    final value = _allergens;
    if (value == null) return null;
    if (_allergens is EqualUnmodifiableListView) return _allergens;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DietaryInfo>? _dietaryInfo;
  @override
  List<DietaryInfo>? get dietaryInfo {
    final value = _dietaryInfo;
    if (value == null) return null;
    if (_dietaryInfo is EqualUnmodifiableListView) return _dietaryInfo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MealNutrition(mealId: $mealId, name: $name, servingSize: $servingSize, totalNutrition: $totalNutrition, components: $components, allergens: $allergens, dietaryInfo: $dietaryInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealNutritionImpl &&
            (identical(other.mealId, mealId) || other.mealId == mealId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.servingSize, servingSize) ||
                other.servingSize == servingSize) &&
            (identical(other.totalNutrition, totalNutrition) ||
                other.totalNutrition == totalNutrition) &&
            const DeepCollectionEquality()
                .equals(other._components, _components) &&
            const DeepCollectionEquality()
                .equals(other._allergens, _allergens) &&
            const DeepCollectionEquality()
                .equals(other._dietaryInfo, _dietaryInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      mealId,
      name,
      servingSize,
      totalNutrition,
      const DeepCollectionEquality().hash(_components),
      const DeepCollectionEquality().hash(_allergens),
      const DeepCollectionEquality().hash(_dietaryInfo));

  /// Create a copy of MealNutrition
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealNutritionImplCopyWith<_$MealNutritionImpl> get copyWith =>
      __$$MealNutritionImplCopyWithImpl<_$MealNutritionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealNutritionImplToJson(
      this,
    );
  }
}

abstract class _MealNutrition implements MealNutrition {
  const factory _MealNutrition(
      {required final String mealId,
      required final String name,
      final ServingSize? servingSize,
      required final NutritionInfo totalNutrition,
      required final List<MealComponent> components,
      final List<Allergen>? allergens,
      final List<DietaryInfo>? dietaryInfo}) = _$MealNutritionImpl;

  factory _MealNutrition.fromJson(Map<String, dynamic> json) =
      _$MealNutritionImpl.fromJson;

  @override
  String get mealId;
  @override
  String get name;
  @override
  ServingSize? get servingSize;
  @override
  NutritionInfo get totalNutrition;
  @override
  List<MealComponent> get components;
  @override
  List<Allergen>? get allergens;
  @override
  List<DietaryInfo>? get dietaryInfo;

  /// Create a copy of MealNutrition
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealNutritionImplCopyWith<_$MealNutritionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServingSize _$ServingSizeFromJson(Map<String, dynamic> json) {
  return _ServingSize.fromJson(json);
}

/// @nodoc
mixin _$ServingSize {
  double get amount => throw _privateConstructorUsedError;
  ServingUnit get unit => throw _privateConstructorUsedError;

  /// Serializes this ServingSize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServingSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServingSizeCopyWith<ServingSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServingSizeCopyWith<$Res> {
  factory $ServingSizeCopyWith(
          ServingSize value, $Res Function(ServingSize) then) =
      _$ServingSizeCopyWithImpl<$Res, ServingSize>;
  @useResult
  $Res call({double amount, ServingUnit unit});
}

/// @nodoc
class _$ServingSizeCopyWithImpl<$Res, $Val extends ServingSize>
    implements $ServingSizeCopyWith<$Res> {
  _$ServingSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServingSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as ServingUnit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServingSizeImplCopyWith<$Res>
    implements $ServingSizeCopyWith<$Res> {
  factory _$$ServingSizeImplCopyWith(
          _$ServingSizeImpl value, $Res Function(_$ServingSizeImpl) then) =
      __$$ServingSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, ServingUnit unit});
}

/// @nodoc
class __$$ServingSizeImplCopyWithImpl<$Res>
    extends _$ServingSizeCopyWithImpl<$Res, _$ServingSizeImpl>
    implements _$$ServingSizeImplCopyWith<$Res> {
  __$$ServingSizeImplCopyWithImpl(
      _$ServingSizeImpl _value, $Res Function(_$ServingSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServingSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_$ServingSizeImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as ServingUnit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServingSizeImpl implements _ServingSize {
  const _$ServingSizeImpl({required this.amount, required this.unit});

  factory _$ServingSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServingSizeImplFromJson(json);

  @override
  final double amount;
  @override
  final ServingUnit unit;

  @override
  String toString() {
    return 'ServingSize(amount: $amount, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServingSizeImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unit);

  /// Create a copy of ServingSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServingSizeImplCopyWith<_$ServingSizeImpl> get copyWith =>
      __$$ServingSizeImplCopyWithImpl<_$ServingSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServingSizeImplToJson(
      this,
    );
  }
}

abstract class _ServingSize implements ServingSize {
  const factory _ServingSize(
      {required final double amount,
      required final ServingUnit unit}) = _$ServingSizeImpl;

  factory _ServingSize.fromJson(Map<String, dynamic> json) =
      _$ServingSizeImpl.fromJson;

  @override
  double get amount;
  @override
  ServingUnit get unit;

  /// Create a copy of ServingSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServingSizeImplCopyWith<_$ServingSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MealComponent _$MealComponentFromJson(Map<String, dynamic> json) {
  return _MealComponent.fromJson(json);
}

/// @nodoc
mixin _$MealComponent {
  String get name => throw _privateConstructorUsedError;
  ComponentAmount? get amount => throw _privateConstructorUsedError;
  NutritionInfo get nutrition => throw _privateConstructorUsedError;

  /// Serializes this MealComponent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealComponentCopyWith<MealComponent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealComponentCopyWith<$Res> {
  factory $MealComponentCopyWith(
          MealComponent value, $Res Function(MealComponent) then) =
      _$MealComponentCopyWithImpl<$Res, MealComponent>;
  @useResult
  $Res call({String name, ComponentAmount? amount, NutritionInfo nutrition});

  $ComponentAmountCopyWith<$Res>? get amount;
  $NutritionInfoCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$MealComponentCopyWithImpl<$Res, $Val extends MealComponent>
    implements $MealComponentCopyWith<$Res> {
  _$MealComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = freezed,
    Object? nutrition = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as ComponentAmount?,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionInfo,
    ) as $Val);
  }

  /// Create a copy of MealComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ComponentAmountCopyWith<$Res>? get amount {
    if (_value.amount == null) {
      return null;
    }

    return $ComponentAmountCopyWith<$Res>(_value.amount!, (value) {
      return _then(_value.copyWith(amount: value) as $Val);
    });
  }

  /// Create a copy of MealComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionInfoCopyWith<$Res> get nutrition {
    return $NutritionInfoCopyWith<$Res>(_value.nutrition, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MealComponentImplCopyWith<$Res>
    implements $MealComponentCopyWith<$Res> {
  factory _$$MealComponentImplCopyWith(
          _$MealComponentImpl value, $Res Function(_$MealComponentImpl) then) =
      __$$MealComponentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, ComponentAmount? amount, NutritionInfo nutrition});

  @override
  $ComponentAmountCopyWith<$Res>? get amount;
  @override
  $NutritionInfoCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$$MealComponentImplCopyWithImpl<$Res>
    extends _$MealComponentCopyWithImpl<$Res, _$MealComponentImpl>
    implements _$$MealComponentImplCopyWith<$Res> {
  __$$MealComponentImplCopyWithImpl(
      _$MealComponentImpl _value, $Res Function(_$MealComponentImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = freezed,
    Object? nutrition = null,
  }) {
    return _then(_$MealComponentImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as ComponentAmount?,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealComponentImpl implements _MealComponent {
  const _$MealComponentImpl(
      {required this.name, this.amount, required this.nutrition});

  factory _$MealComponentImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealComponentImplFromJson(json);

  @override
  final String name;
  @override
  final ComponentAmount? amount;
  @override
  final NutritionInfo nutrition;

  @override
  String toString() {
    return 'MealComponent(name: $name, amount: $amount, nutrition: $nutrition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealComponentImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, nutrition);

  /// Create a copy of MealComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealComponentImplCopyWith<_$MealComponentImpl> get copyWith =>
      __$$MealComponentImplCopyWithImpl<_$MealComponentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealComponentImplToJson(
      this,
    );
  }
}

abstract class _MealComponent implements MealComponent {
  const factory _MealComponent(
      {required final String name,
      final ComponentAmount? amount,
      required final NutritionInfo nutrition}) = _$MealComponentImpl;

  factory _MealComponent.fromJson(Map<String, dynamic> json) =
      _$MealComponentImpl.fromJson;

  @override
  String get name;
  @override
  ComponentAmount? get amount;
  @override
  NutritionInfo get nutrition;

  /// Create a copy of MealComponent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealComponentImplCopyWith<_$MealComponentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComponentAmount _$ComponentAmountFromJson(Map<String, dynamic> json) {
  return _ComponentAmount.fromJson(json);
}

/// @nodoc
mixin _$ComponentAmount {
  double get value => throw _privateConstructorUsedError;
  ServingUnit get unit => throw _privateConstructorUsedError;

  /// Serializes this ComponentAmount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComponentAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComponentAmountCopyWith<ComponentAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComponentAmountCopyWith<$Res> {
  factory $ComponentAmountCopyWith(
          ComponentAmount value, $Res Function(ComponentAmount) then) =
      _$ComponentAmountCopyWithImpl<$Res, ComponentAmount>;
  @useResult
  $Res call({double value, ServingUnit unit});
}

/// @nodoc
class _$ComponentAmountCopyWithImpl<$Res, $Val extends ComponentAmount>
    implements $ComponentAmountCopyWith<$Res> {
  _$ComponentAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComponentAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as ServingUnit,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComponentAmountImplCopyWith<$Res>
    implements $ComponentAmountCopyWith<$Res> {
  factory _$$ComponentAmountImplCopyWith(_$ComponentAmountImpl value,
          $Res Function(_$ComponentAmountImpl) then) =
      __$$ComponentAmountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, ServingUnit unit});
}

/// @nodoc
class __$$ComponentAmountImplCopyWithImpl<$Res>
    extends _$ComponentAmountCopyWithImpl<$Res, _$ComponentAmountImpl>
    implements _$$ComponentAmountImplCopyWith<$Res> {
  __$$ComponentAmountImplCopyWithImpl(
      _$ComponentAmountImpl _value, $Res Function(_$ComponentAmountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComponentAmount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? unit = null,
  }) {
    return _then(_$ComponentAmountImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as ServingUnit,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComponentAmountImpl implements _ComponentAmount {
  const _$ComponentAmountImpl({required this.value, required this.unit});

  factory _$ComponentAmountImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComponentAmountImplFromJson(json);

  @override
  final double value;
  @override
  final ServingUnit unit;

  @override
  String toString() {
    return 'ComponentAmount(value: $value, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComponentAmountImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, unit);

  /// Create a copy of ComponentAmount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComponentAmountImplCopyWith<_$ComponentAmountImpl> get copyWith =>
      __$$ComponentAmountImplCopyWithImpl<_$ComponentAmountImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComponentAmountImplToJson(
      this,
    );
  }
}

abstract class _ComponentAmount implements ComponentAmount {
  const factory _ComponentAmount(
      {required final double value,
      required final ServingUnit unit}) = _$ComponentAmountImpl;

  factory _ComponentAmount.fromJson(Map<String, dynamic> json) =
      _$ComponentAmountImpl.fromJson;

  @override
  double get value;
  @override
  ServingUnit get unit;

  /// Create a copy of ComponentAmount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComponentAmountImplCopyWith<_$ComponentAmountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NutritionInfo _$NutritionInfoFromJson(Map<String, dynamic> json) {
  return _NutritionInfo.fromJson(json);
}

/// @nodoc
mixin _$NutritionInfo {
  double get calories => throw _privateConstructorUsedError;
  Macronutrients get macronutrients => throw _privateConstructorUsedError;
  Micronutrients get micronutrients => throw _privateConstructorUsedError;

  /// Serializes this NutritionInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NutritionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NutritionInfoCopyWith<NutritionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutritionInfoCopyWith<$Res> {
  factory $NutritionInfoCopyWith(
          NutritionInfo value, $Res Function(NutritionInfo) then) =
      _$NutritionInfoCopyWithImpl<$Res, NutritionInfo>;
  @useResult
  $Res call(
      {double calories,
      Macronutrients macronutrients,
      Micronutrients micronutrients});

  $MacronutrientsCopyWith<$Res> get macronutrients;
  $MicronutrientsCopyWith<$Res> get micronutrients;
}

/// @nodoc
class _$NutritionInfoCopyWithImpl<$Res, $Val extends NutritionInfo>
    implements $NutritionInfoCopyWith<$Res> {
  _$NutritionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NutritionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? macronutrients = null,
    Object? micronutrients = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      macronutrients: null == macronutrients
          ? _value.macronutrients
          : macronutrients // ignore: cast_nullable_to_non_nullable
              as Macronutrients,
      micronutrients: null == micronutrients
          ? _value.micronutrients
          : micronutrients // ignore: cast_nullable_to_non_nullable
              as Micronutrients,
    ) as $Val);
  }

  /// Create a copy of NutritionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MacronutrientsCopyWith<$Res> get macronutrients {
    return $MacronutrientsCopyWith<$Res>(_value.macronutrients, (value) {
      return _then(_value.copyWith(macronutrients: value) as $Val);
    });
  }

  /// Create a copy of NutritionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MicronutrientsCopyWith<$Res> get micronutrients {
    return $MicronutrientsCopyWith<$Res>(_value.micronutrients, (value) {
      return _then(_value.copyWith(micronutrients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NutritionInfoImplCopyWith<$Res>
    implements $NutritionInfoCopyWith<$Res> {
  factory _$$NutritionInfoImplCopyWith(
          _$NutritionInfoImpl value, $Res Function(_$NutritionInfoImpl) then) =
      __$$NutritionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double calories,
      Macronutrients macronutrients,
      Micronutrients micronutrients});

  @override
  $MacronutrientsCopyWith<$Res> get macronutrients;
  @override
  $MicronutrientsCopyWith<$Res> get micronutrients;
}

/// @nodoc
class __$$NutritionInfoImplCopyWithImpl<$Res>
    extends _$NutritionInfoCopyWithImpl<$Res, _$NutritionInfoImpl>
    implements _$$NutritionInfoImplCopyWith<$Res> {
  __$$NutritionInfoImplCopyWithImpl(
      _$NutritionInfoImpl _value, $Res Function(_$NutritionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NutritionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? macronutrients = null,
    Object? micronutrients = null,
  }) {
    return _then(_$NutritionInfoImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      macronutrients: null == macronutrients
          ? _value.macronutrients
          : macronutrients // ignore: cast_nullable_to_non_nullable
              as Macronutrients,
      micronutrients: null == micronutrients
          ? _value.micronutrients
          : micronutrients // ignore: cast_nullable_to_non_nullable
              as Micronutrients,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NutritionInfoImpl implements _NutritionInfo {
  const _$NutritionInfoImpl(
      {required this.calories,
      required this.macronutrients,
      required this.micronutrients});

  factory _$NutritionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutritionInfoImplFromJson(json);

  @override
  final double calories;
  @override
  final Macronutrients macronutrients;
  @override
  final Micronutrients micronutrients;

  @override
  String toString() {
    return 'NutritionInfo(calories: $calories, macronutrients: $macronutrients, micronutrients: $micronutrients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutritionInfoImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.macronutrients, macronutrients) ||
                other.macronutrients == macronutrients) &&
            (identical(other.micronutrients, micronutrients) ||
                other.micronutrients == micronutrients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, calories, macronutrients, micronutrients);

  /// Create a copy of NutritionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NutritionInfoImplCopyWith<_$NutritionInfoImpl> get copyWith =>
      __$$NutritionInfoImplCopyWithImpl<_$NutritionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutritionInfoImplToJson(
      this,
    );
  }
}

abstract class _NutritionInfo implements NutritionInfo {
  const factory _NutritionInfo(
      {required final double calories,
      required final Macronutrients macronutrients,
      required final Micronutrients micronutrients}) = _$NutritionInfoImpl;

  factory _NutritionInfo.fromJson(Map<String, dynamic> json) =
      _$NutritionInfoImpl.fromJson;

  @override
  double get calories;
  @override
  Macronutrients get macronutrients;
  @override
  Micronutrients get micronutrients;

  /// Create a copy of NutritionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NutritionInfoImplCopyWith<_$NutritionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Macronutrients _$MacronutrientsFromJson(Map<String, dynamic> json) {
  return _Macronutrients.fromJson(json);
}

/// @nodoc
mixin _$Macronutrients {
  Protein get protein => throw _privateConstructorUsedError;
  Carbohydrates get carbohydrates => throw _privateConstructorUsedError;
  Fats get fats => throw _privateConstructorUsedError;

  /// Serializes this Macronutrients to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Macronutrients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MacronutrientsCopyWith<Macronutrients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MacronutrientsCopyWith<$Res> {
  factory $MacronutrientsCopyWith(
          Macronutrients value, $Res Function(Macronutrients) then) =
      _$MacronutrientsCopyWithImpl<$Res, Macronutrients>;
  @useResult
  $Res call({Protein protein, Carbohydrates carbohydrates, Fats fats});

  $ProteinCopyWith<$Res> get protein;
  $CarbohydratesCopyWith<$Res> get carbohydrates;
  $FatsCopyWith<$Res> get fats;
}

/// @nodoc
class _$MacronutrientsCopyWithImpl<$Res, $Val extends Macronutrients>
    implements $MacronutrientsCopyWith<$Res> {
  _$MacronutrientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Macronutrients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protein = null,
    Object? carbohydrates = null,
    Object? fats = null,
  }) {
    return _then(_value.copyWith(
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as Protein,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as Carbohydrates,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as Fats,
    ) as $Val);
  }

  /// Create a copy of Macronutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProteinCopyWith<$Res> get protein {
    return $ProteinCopyWith<$Res>(_value.protein, (value) {
      return _then(_value.copyWith(protein: value) as $Val);
    });
  }

  /// Create a copy of Macronutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarbohydratesCopyWith<$Res> get carbohydrates {
    return $CarbohydratesCopyWith<$Res>(_value.carbohydrates, (value) {
      return _then(_value.copyWith(carbohydrates: value) as $Val);
    });
  }

  /// Create a copy of Macronutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FatsCopyWith<$Res> get fats {
    return $FatsCopyWith<$Res>(_value.fats, (value) {
      return _then(_value.copyWith(fats: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MacronutrientsImplCopyWith<$Res>
    implements $MacronutrientsCopyWith<$Res> {
  factory _$$MacronutrientsImplCopyWith(_$MacronutrientsImpl value,
          $Res Function(_$MacronutrientsImpl) then) =
      __$$MacronutrientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Protein protein, Carbohydrates carbohydrates, Fats fats});

  @override
  $ProteinCopyWith<$Res> get protein;
  @override
  $CarbohydratesCopyWith<$Res> get carbohydrates;
  @override
  $FatsCopyWith<$Res> get fats;
}

/// @nodoc
class __$$MacronutrientsImplCopyWithImpl<$Res>
    extends _$MacronutrientsCopyWithImpl<$Res, _$MacronutrientsImpl>
    implements _$$MacronutrientsImplCopyWith<$Res> {
  __$$MacronutrientsImplCopyWithImpl(
      _$MacronutrientsImpl _value, $Res Function(_$MacronutrientsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Macronutrients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? protein = null,
    Object? carbohydrates = null,
    Object? fats = null,
  }) {
    return _then(_$MacronutrientsImpl(
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as Protein,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as Carbohydrates,
      fats: null == fats
          ? _value.fats
          : fats // ignore: cast_nullable_to_non_nullable
              as Fats,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MacronutrientsImpl implements _Macronutrients {
  const _$MacronutrientsImpl(
      {required this.protein, required this.carbohydrates, required this.fats});

  factory _$MacronutrientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MacronutrientsImplFromJson(json);

  @override
  final Protein protein;
  @override
  final Carbohydrates carbohydrates;
  @override
  final Fats fats;

  @override
  String toString() {
    return 'Macronutrients(protein: $protein, carbohydrates: $carbohydrates, fats: $fats)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MacronutrientsImpl &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates) &&
            (identical(other.fats, fats) || other.fats == fats));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, protein, carbohydrates, fats);

  /// Create a copy of Macronutrients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MacronutrientsImplCopyWith<_$MacronutrientsImpl> get copyWith =>
      __$$MacronutrientsImplCopyWithImpl<_$MacronutrientsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MacronutrientsImplToJson(
      this,
    );
  }
}

abstract class _Macronutrients implements Macronutrients {
  const factory _Macronutrients(
      {required final Protein protein,
      required final Carbohydrates carbohydrates,
      required final Fats fats}) = _$MacronutrientsImpl;

  factory _Macronutrients.fromJson(Map<String, dynamic> json) =
      _$MacronutrientsImpl.fromJson;

  @override
  Protein get protein;
  @override
  Carbohydrates get carbohydrates;
  @override
  Fats get fats;

  /// Create a copy of Macronutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MacronutrientsImplCopyWith<_$MacronutrientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Protein _$ProteinFromJson(Map<String, dynamic> json) {
  return _Protein.fromJson(json);
}

/// @nodoc
mixin _$Protein {
  double get total => throw _privateConstructorUsedError;
  bool? get complete => throw _privateConstructorUsedError;

  /// Serializes this Protein to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Protein
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProteinCopyWith<Protein> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProteinCopyWith<$Res> {
  factory $ProteinCopyWith(Protein value, $Res Function(Protein) then) =
      _$ProteinCopyWithImpl<$Res, Protein>;
  @useResult
  $Res call({double total, bool? complete});
}

/// @nodoc
class _$ProteinCopyWithImpl<$Res, $Val extends Protein>
    implements $ProteinCopyWith<$Res> {
  _$ProteinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Protein
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? complete = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      complete: freezed == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProteinImplCopyWith<$Res> implements $ProteinCopyWith<$Res> {
  factory _$$ProteinImplCopyWith(
          _$ProteinImpl value, $Res Function(_$ProteinImpl) then) =
      __$$ProteinImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double total, bool? complete});
}

/// @nodoc
class __$$ProteinImplCopyWithImpl<$Res>
    extends _$ProteinCopyWithImpl<$Res, _$ProteinImpl>
    implements _$$ProteinImplCopyWith<$Res> {
  __$$ProteinImplCopyWithImpl(
      _$ProteinImpl _value, $Res Function(_$ProteinImpl) _then)
      : super(_value, _then);

  /// Create a copy of Protein
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? complete = freezed,
  }) {
    return _then(_$ProteinImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      complete: freezed == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProteinImpl implements _Protein {
  const _$ProteinImpl({required this.total, this.complete});

  factory _$ProteinImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProteinImplFromJson(json);

  @override
  final double total;
  @override
  final bool? complete;

  @override
  String toString() {
    return 'Protein(total: $total, complete: $complete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProteinImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.complete, complete) ||
                other.complete == complete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, complete);

  /// Create a copy of Protein
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProteinImplCopyWith<_$ProteinImpl> get copyWith =>
      __$$ProteinImplCopyWithImpl<_$ProteinImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProteinImplToJson(
      this,
    );
  }
}

abstract class _Protein implements Protein {
  const factory _Protein({required final double total, final bool? complete}) =
      _$ProteinImpl;

  factory _Protein.fromJson(Map<String, dynamic> json) = _$ProteinImpl.fromJson;

  @override
  double get total;
  @override
  bool? get complete;

  /// Create a copy of Protein
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProteinImplCopyWith<_$ProteinImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Carbohydrates _$CarbohydratesFromJson(Map<String, dynamic> json) {
  return _Carbohydrates.fromJson(json);
}

/// @nodoc
mixin _$Carbohydrates {
  double get total => throw _privateConstructorUsedError;
  CarbBreakdown? get breakdown => throw _privateConstructorUsedError;
  double? get glycemicIndex => throw _privateConstructorUsedError;
  double? get glycemicLoad => throw _privateConstructorUsedError;

  /// Serializes this Carbohydrates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Carbohydrates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarbohydratesCopyWith<Carbohydrates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarbohydratesCopyWith<$Res> {
  factory $CarbohydratesCopyWith(
          Carbohydrates value, $Res Function(Carbohydrates) then) =
      _$CarbohydratesCopyWithImpl<$Res, Carbohydrates>;
  @useResult
  $Res call(
      {double total,
      CarbBreakdown? breakdown,
      double? glycemicIndex,
      double? glycemicLoad});

  $CarbBreakdownCopyWith<$Res>? get breakdown;
}

/// @nodoc
class _$CarbohydratesCopyWithImpl<$Res, $Val extends Carbohydrates>
    implements $CarbohydratesCopyWith<$Res> {
  _$CarbohydratesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Carbohydrates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? breakdown = freezed,
    Object? glycemicIndex = freezed,
    Object? glycemicLoad = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      breakdown: freezed == breakdown
          ? _value.breakdown
          : breakdown // ignore: cast_nullable_to_non_nullable
              as CarbBreakdown?,
      glycemicIndex: freezed == glycemicIndex
          ? _value.glycemicIndex
          : glycemicIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      glycemicLoad: freezed == glycemicLoad
          ? _value.glycemicLoad
          : glycemicLoad // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  /// Create a copy of Carbohydrates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CarbBreakdownCopyWith<$Res>? get breakdown {
    if (_value.breakdown == null) {
      return null;
    }

    return $CarbBreakdownCopyWith<$Res>(_value.breakdown!, (value) {
      return _then(_value.copyWith(breakdown: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CarbohydratesImplCopyWith<$Res>
    implements $CarbohydratesCopyWith<$Res> {
  factory _$$CarbohydratesImplCopyWith(
          _$CarbohydratesImpl value, $Res Function(_$CarbohydratesImpl) then) =
      __$$CarbohydratesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double total,
      CarbBreakdown? breakdown,
      double? glycemicIndex,
      double? glycemicLoad});

  @override
  $CarbBreakdownCopyWith<$Res>? get breakdown;
}

/// @nodoc
class __$$CarbohydratesImplCopyWithImpl<$Res>
    extends _$CarbohydratesCopyWithImpl<$Res, _$CarbohydratesImpl>
    implements _$$CarbohydratesImplCopyWith<$Res> {
  __$$CarbohydratesImplCopyWithImpl(
      _$CarbohydratesImpl _value, $Res Function(_$CarbohydratesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Carbohydrates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? breakdown = freezed,
    Object? glycemicIndex = freezed,
    Object? glycemicLoad = freezed,
  }) {
    return _then(_$CarbohydratesImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      breakdown: freezed == breakdown
          ? _value.breakdown
          : breakdown // ignore: cast_nullable_to_non_nullable
              as CarbBreakdown?,
      glycemicIndex: freezed == glycemicIndex
          ? _value.glycemicIndex
          : glycemicIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      glycemicLoad: freezed == glycemicLoad
          ? _value.glycemicLoad
          : glycemicLoad // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarbohydratesImpl implements _Carbohydrates {
  const _$CarbohydratesImpl(
      {required this.total,
      this.breakdown,
      this.glycemicIndex,
      this.glycemicLoad});

  factory _$CarbohydratesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarbohydratesImplFromJson(json);

  @override
  final double total;
  @override
  final CarbBreakdown? breakdown;
  @override
  final double? glycemicIndex;
  @override
  final double? glycemicLoad;

  @override
  String toString() {
    return 'Carbohydrates(total: $total, breakdown: $breakdown, glycemicIndex: $glycemicIndex, glycemicLoad: $glycemicLoad)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarbohydratesImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.breakdown, breakdown) ||
                other.breakdown == breakdown) &&
            (identical(other.glycemicIndex, glycemicIndex) ||
                other.glycemicIndex == glycemicIndex) &&
            (identical(other.glycemicLoad, glycemicLoad) ||
                other.glycemicLoad == glycemicLoad));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, total, breakdown, glycemicIndex, glycemicLoad);

  /// Create a copy of Carbohydrates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarbohydratesImplCopyWith<_$CarbohydratesImpl> get copyWith =>
      __$$CarbohydratesImplCopyWithImpl<_$CarbohydratesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarbohydratesImplToJson(
      this,
    );
  }
}

abstract class _Carbohydrates implements Carbohydrates {
  const factory _Carbohydrates(
      {required final double total,
      final CarbBreakdown? breakdown,
      final double? glycemicIndex,
      final double? glycemicLoad}) = _$CarbohydratesImpl;

  factory _Carbohydrates.fromJson(Map<String, dynamic> json) =
      _$CarbohydratesImpl.fromJson;

  @override
  double get total;
  @override
  CarbBreakdown? get breakdown;
  @override
  double? get glycemicIndex;
  @override
  double? get glycemicLoad;

  /// Create a copy of Carbohydrates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarbohydratesImplCopyWith<_$CarbohydratesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CarbBreakdown _$CarbBreakdownFromJson(Map<String, dynamic> json) {
  return _CarbBreakdown.fromJson(json);
}

/// @nodoc
mixin _$CarbBreakdown {
  double? get fiber => throw _privateConstructorUsedError;
  double? get sugar => throw _privateConstructorUsedError;
  double? get starch => throw _privateConstructorUsedError;

  /// Serializes this CarbBreakdown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CarbBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CarbBreakdownCopyWith<CarbBreakdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarbBreakdownCopyWith<$Res> {
  factory $CarbBreakdownCopyWith(
          CarbBreakdown value, $Res Function(CarbBreakdown) then) =
      _$CarbBreakdownCopyWithImpl<$Res, CarbBreakdown>;
  @useResult
  $Res call({double? fiber, double? sugar, double? starch});
}

/// @nodoc
class _$CarbBreakdownCopyWithImpl<$Res, $Val extends CarbBreakdown>
    implements $CarbBreakdownCopyWith<$Res> {
  _$CarbBreakdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CarbBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fiber = freezed,
    Object? sugar = freezed,
    Object? starch = freezed,
  }) {
    return _then(_value.copyWith(
      fiber: freezed == fiber
          ? _value.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as double?,
      sugar: freezed == sugar
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as double?,
      starch: freezed == starch
          ? _value.starch
          : starch // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarbBreakdownImplCopyWith<$Res>
    implements $CarbBreakdownCopyWith<$Res> {
  factory _$$CarbBreakdownImplCopyWith(
          _$CarbBreakdownImpl value, $Res Function(_$CarbBreakdownImpl) then) =
      __$$CarbBreakdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? fiber, double? sugar, double? starch});
}

/// @nodoc
class __$$CarbBreakdownImplCopyWithImpl<$Res>
    extends _$CarbBreakdownCopyWithImpl<$Res, _$CarbBreakdownImpl>
    implements _$$CarbBreakdownImplCopyWith<$Res> {
  __$$CarbBreakdownImplCopyWithImpl(
      _$CarbBreakdownImpl _value, $Res Function(_$CarbBreakdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of CarbBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fiber = freezed,
    Object? sugar = freezed,
    Object? starch = freezed,
  }) {
    return _then(_$CarbBreakdownImpl(
      fiber: freezed == fiber
          ? _value.fiber
          : fiber // ignore: cast_nullable_to_non_nullable
              as double?,
      sugar: freezed == sugar
          ? _value.sugar
          : sugar // ignore: cast_nullable_to_non_nullable
              as double?,
      starch: freezed == starch
          ? _value.starch
          : starch // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarbBreakdownImpl implements _CarbBreakdown {
  const _$CarbBreakdownImpl({this.fiber, this.sugar, this.starch});

  factory _$CarbBreakdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarbBreakdownImplFromJson(json);

  @override
  final double? fiber;
  @override
  final double? sugar;
  @override
  final double? starch;

  @override
  String toString() {
    return 'CarbBreakdown(fiber: $fiber, sugar: $sugar, starch: $starch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarbBreakdownImpl &&
            (identical(other.fiber, fiber) || other.fiber == fiber) &&
            (identical(other.sugar, sugar) || other.sugar == sugar) &&
            (identical(other.starch, starch) || other.starch == starch));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, fiber, sugar, starch);

  /// Create a copy of CarbBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CarbBreakdownImplCopyWith<_$CarbBreakdownImpl> get copyWith =>
      __$$CarbBreakdownImplCopyWithImpl<_$CarbBreakdownImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarbBreakdownImplToJson(
      this,
    );
  }
}

abstract class _CarbBreakdown implements CarbBreakdown {
  const factory _CarbBreakdown(
      {final double? fiber,
      final double? sugar,
      final double? starch}) = _$CarbBreakdownImpl;

  factory _CarbBreakdown.fromJson(Map<String, dynamic> json) =
      _$CarbBreakdownImpl.fromJson;

  @override
  double? get fiber;
  @override
  double? get sugar;
  @override
  double? get starch;

  /// Create a copy of CarbBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CarbBreakdownImplCopyWith<_$CarbBreakdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Fats _$FatsFromJson(Map<String, dynamic> json) {
  return _Fats.fromJson(json);
}

/// @nodoc
mixin _$Fats {
  double get total => throw _privateConstructorUsedError;
  FatBreakdown? get breakdown => throw _privateConstructorUsedError;

  /// Serializes this Fats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Fats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FatsCopyWith<Fats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatsCopyWith<$Res> {
  factory $FatsCopyWith(Fats value, $Res Function(Fats) then) =
      _$FatsCopyWithImpl<$Res, Fats>;
  @useResult
  $Res call({double total, FatBreakdown? breakdown});

  $FatBreakdownCopyWith<$Res>? get breakdown;
}

/// @nodoc
class _$FatsCopyWithImpl<$Res, $Val extends Fats>
    implements $FatsCopyWith<$Res> {
  _$FatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Fats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? breakdown = freezed,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      breakdown: freezed == breakdown
          ? _value.breakdown
          : breakdown // ignore: cast_nullable_to_non_nullable
              as FatBreakdown?,
    ) as $Val);
  }

  /// Create a copy of Fats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FatBreakdownCopyWith<$Res>? get breakdown {
    if (_value.breakdown == null) {
      return null;
    }

    return $FatBreakdownCopyWith<$Res>(_value.breakdown!, (value) {
      return _then(_value.copyWith(breakdown: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FatsImplCopyWith<$Res> implements $FatsCopyWith<$Res> {
  factory _$$FatsImplCopyWith(
          _$FatsImpl value, $Res Function(_$FatsImpl) then) =
      __$$FatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double total, FatBreakdown? breakdown});

  @override
  $FatBreakdownCopyWith<$Res>? get breakdown;
}

/// @nodoc
class __$$FatsImplCopyWithImpl<$Res>
    extends _$FatsCopyWithImpl<$Res, _$FatsImpl>
    implements _$$FatsImplCopyWith<$Res> {
  __$$FatsImplCopyWithImpl(_$FatsImpl _value, $Res Function(_$FatsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Fats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? breakdown = freezed,
  }) {
    return _then(_$FatsImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      breakdown: freezed == breakdown
          ? _value.breakdown
          : breakdown // ignore: cast_nullable_to_non_nullable
              as FatBreakdown?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatsImpl implements _Fats {
  const _$FatsImpl({required this.total, this.breakdown});

  factory _$FatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$FatsImplFromJson(json);

  @override
  final double total;
  @override
  final FatBreakdown? breakdown;

  @override
  String toString() {
    return 'Fats(total: $total, breakdown: $breakdown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.breakdown, breakdown) ||
                other.breakdown == breakdown));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, breakdown);

  /// Create a copy of Fats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FatsImplCopyWith<_$FatsImpl> get copyWith =>
      __$$FatsImplCopyWithImpl<_$FatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FatsImplToJson(
      this,
    );
  }
}

abstract class _Fats implements Fats {
  const factory _Fats(
      {required final double total,
      final FatBreakdown? breakdown}) = _$FatsImpl;

  factory _Fats.fromJson(Map<String, dynamic> json) = _$FatsImpl.fromJson;

  @override
  double get total;
  @override
  FatBreakdown? get breakdown;

  /// Create a copy of Fats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FatsImplCopyWith<_$FatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FatBreakdown _$FatBreakdownFromJson(Map<String, dynamic> json) {
  return _FatBreakdown.fromJson(json);
}

/// @nodoc
mixin _$FatBreakdown {
  double? get saturated => throw _privateConstructorUsedError;
  double? get monounsaturated => throw _privateConstructorUsedError;
  double? get polyunsaturated => throw _privateConstructorUsedError;
  double? get trans => throw _privateConstructorUsedError;
  double? get omega3 => throw _privateConstructorUsedError;
  double? get omega6 => throw _privateConstructorUsedError;

  /// Serializes this FatBreakdown to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FatBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FatBreakdownCopyWith<FatBreakdown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FatBreakdownCopyWith<$Res> {
  factory $FatBreakdownCopyWith(
          FatBreakdown value, $Res Function(FatBreakdown) then) =
      _$FatBreakdownCopyWithImpl<$Res, FatBreakdown>;
  @useResult
  $Res call(
      {double? saturated,
      double? monounsaturated,
      double? polyunsaturated,
      double? trans,
      double? omega3,
      double? omega6});
}

/// @nodoc
class _$FatBreakdownCopyWithImpl<$Res, $Val extends FatBreakdown>
    implements $FatBreakdownCopyWith<$Res> {
  _$FatBreakdownCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FatBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saturated = freezed,
    Object? monounsaturated = freezed,
    Object? polyunsaturated = freezed,
    Object? trans = freezed,
    Object? omega3 = freezed,
    Object? omega6 = freezed,
  }) {
    return _then(_value.copyWith(
      saturated: freezed == saturated
          ? _value.saturated
          : saturated // ignore: cast_nullable_to_non_nullable
              as double?,
      monounsaturated: freezed == monounsaturated
          ? _value.monounsaturated
          : monounsaturated // ignore: cast_nullable_to_non_nullable
              as double?,
      polyunsaturated: freezed == polyunsaturated
          ? _value.polyunsaturated
          : polyunsaturated // ignore: cast_nullable_to_non_nullable
              as double?,
      trans: freezed == trans
          ? _value.trans
          : trans // ignore: cast_nullable_to_non_nullable
              as double?,
      omega3: freezed == omega3
          ? _value.omega3
          : omega3 // ignore: cast_nullable_to_non_nullable
              as double?,
      omega6: freezed == omega6
          ? _value.omega6
          : omega6 // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FatBreakdownImplCopyWith<$Res>
    implements $FatBreakdownCopyWith<$Res> {
  factory _$$FatBreakdownImplCopyWith(
          _$FatBreakdownImpl value, $Res Function(_$FatBreakdownImpl) then) =
      __$$FatBreakdownImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? saturated,
      double? monounsaturated,
      double? polyunsaturated,
      double? trans,
      double? omega3,
      double? omega6});
}

/// @nodoc
class __$$FatBreakdownImplCopyWithImpl<$Res>
    extends _$FatBreakdownCopyWithImpl<$Res, _$FatBreakdownImpl>
    implements _$$FatBreakdownImplCopyWith<$Res> {
  __$$FatBreakdownImplCopyWithImpl(
      _$FatBreakdownImpl _value, $Res Function(_$FatBreakdownImpl) _then)
      : super(_value, _then);

  /// Create a copy of FatBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? saturated = freezed,
    Object? monounsaturated = freezed,
    Object? polyunsaturated = freezed,
    Object? trans = freezed,
    Object? omega3 = freezed,
    Object? omega6 = freezed,
  }) {
    return _then(_$FatBreakdownImpl(
      saturated: freezed == saturated
          ? _value.saturated
          : saturated // ignore: cast_nullable_to_non_nullable
              as double?,
      monounsaturated: freezed == monounsaturated
          ? _value.monounsaturated
          : monounsaturated // ignore: cast_nullable_to_non_nullable
              as double?,
      polyunsaturated: freezed == polyunsaturated
          ? _value.polyunsaturated
          : polyunsaturated // ignore: cast_nullable_to_non_nullable
              as double?,
      trans: freezed == trans
          ? _value.trans
          : trans // ignore: cast_nullable_to_non_nullable
              as double?,
      omega3: freezed == omega3
          ? _value.omega3
          : omega3 // ignore: cast_nullable_to_non_nullable
              as double?,
      omega6: freezed == omega6
          ? _value.omega6
          : omega6 // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FatBreakdownImpl implements _FatBreakdown {
  const _$FatBreakdownImpl(
      {this.saturated,
      this.monounsaturated,
      this.polyunsaturated,
      this.trans,
      this.omega3,
      this.omega6});

  factory _$FatBreakdownImpl.fromJson(Map<String, dynamic> json) =>
      _$$FatBreakdownImplFromJson(json);

  @override
  final double? saturated;
  @override
  final double? monounsaturated;
  @override
  final double? polyunsaturated;
  @override
  final double? trans;
  @override
  final double? omega3;
  @override
  final double? omega6;

  @override
  String toString() {
    return 'FatBreakdown(saturated: $saturated, monounsaturated: $monounsaturated, polyunsaturated: $polyunsaturated, trans: $trans, omega3: $omega3, omega6: $omega6)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatBreakdownImpl &&
            (identical(other.saturated, saturated) ||
                other.saturated == saturated) &&
            (identical(other.monounsaturated, monounsaturated) ||
                other.monounsaturated == monounsaturated) &&
            (identical(other.polyunsaturated, polyunsaturated) ||
                other.polyunsaturated == polyunsaturated) &&
            (identical(other.trans, trans) || other.trans == trans) &&
            (identical(other.omega3, omega3) || other.omega3 == omega3) &&
            (identical(other.omega6, omega6) || other.omega6 == omega6));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, saturated, monounsaturated,
      polyunsaturated, trans, omega3, omega6);

  /// Create a copy of FatBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FatBreakdownImplCopyWith<_$FatBreakdownImpl> get copyWith =>
      __$$FatBreakdownImplCopyWithImpl<_$FatBreakdownImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FatBreakdownImplToJson(
      this,
    );
  }
}

abstract class _FatBreakdown implements FatBreakdown {
  const factory _FatBreakdown(
      {final double? saturated,
      final double? monounsaturated,
      final double? polyunsaturated,
      final double? trans,
      final double? omega3,
      final double? omega6}) = _$FatBreakdownImpl;

  factory _FatBreakdown.fromJson(Map<String, dynamic> json) =
      _$FatBreakdownImpl.fromJson;

  @override
  double? get saturated;
  @override
  double? get monounsaturated;
  @override
  double? get polyunsaturated;
  @override
  double? get trans;
  @override
  double? get omega3;
  @override
  double? get omega6;

  /// Create a copy of FatBreakdown
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FatBreakdownImplCopyWith<_$FatBreakdownImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Micronutrients _$MicronutrientsFromJson(Map<String, dynamic> json) {
  return _Micronutrients.fromJson(json);
}

/// @nodoc
mixin _$Micronutrients {
  Vitamins? get vitamins => throw _privateConstructorUsedError;
  Minerals? get minerals => throw _privateConstructorUsedError;

  /// Serializes this Micronutrients to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Micronutrients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MicronutrientsCopyWith<Micronutrients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicronutrientsCopyWith<$Res> {
  factory $MicronutrientsCopyWith(
          Micronutrients value, $Res Function(Micronutrients) then) =
      _$MicronutrientsCopyWithImpl<$Res, Micronutrients>;
  @useResult
  $Res call({Vitamins? vitamins, Minerals? minerals});

  $VitaminsCopyWith<$Res>? get vitamins;
  $MineralsCopyWith<$Res>? get minerals;
}

/// @nodoc
class _$MicronutrientsCopyWithImpl<$Res, $Val extends Micronutrients>
    implements $MicronutrientsCopyWith<$Res> {
  _$MicronutrientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Micronutrients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vitamins = freezed,
    Object? minerals = freezed,
  }) {
    return _then(_value.copyWith(
      vitamins: freezed == vitamins
          ? _value.vitamins
          : vitamins // ignore: cast_nullable_to_non_nullable
              as Vitamins?,
      minerals: freezed == minerals
          ? _value.minerals
          : minerals // ignore: cast_nullable_to_non_nullable
              as Minerals?,
    ) as $Val);
  }

  /// Create a copy of Micronutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VitaminsCopyWith<$Res>? get vitamins {
    if (_value.vitamins == null) {
      return null;
    }

    return $VitaminsCopyWith<$Res>(_value.vitamins!, (value) {
      return _then(_value.copyWith(vitamins: value) as $Val);
    });
  }

  /// Create a copy of Micronutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MineralsCopyWith<$Res>? get minerals {
    if (_value.minerals == null) {
      return null;
    }

    return $MineralsCopyWith<$Res>(_value.minerals!, (value) {
      return _then(_value.copyWith(minerals: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MicronutrientsImplCopyWith<$Res>
    implements $MicronutrientsCopyWith<$Res> {
  factory _$$MicronutrientsImplCopyWith(_$MicronutrientsImpl value,
          $Res Function(_$MicronutrientsImpl) then) =
      __$$MicronutrientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Vitamins? vitamins, Minerals? minerals});

  @override
  $VitaminsCopyWith<$Res>? get vitamins;
  @override
  $MineralsCopyWith<$Res>? get minerals;
}

/// @nodoc
class __$$MicronutrientsImplCopyWithImpl<$Res>
    extends _$MicronutrientsCopyWithImpl<$Res, _$MicronutrientsImpl>
    implements _$$MicronutrientsImplCopyWith<$Res> {
  __$$MicronutrientsImplCopyWithImpl(
      _$MicronutrientsImpl _value, $Res Function(_$MicronutrientsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Micronutrients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vitamins = freezed,
    Object? minerals = freezed,
  }) {
    return _then(_$MicronutrientsImpl(
      vitamins: freezed == vitamins
          ? _value.vitamins
          : vitamins // ignore: cast_nullable_to_non_nullable
              as Vitamins?,
      minerals: freezed == minerals
          ? _value.minerals
          : minerals // ignore: cast_nullable_to_non_nullable
              as Minerals?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MicronutrientsImpl implements _Micronutrients {
  const _$MicronutrientsImpl({this.vitamins, this.minerals});

  factory _$MicronutrientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MicronutrientsImplFromJson(json);

  @override
  final Vitamins? vitamins;
  @override
  final Minerals? minerals;

  @override
  String toString() {
    return 'Micronutrients(vitamins: $vitamins, minerals: $minerals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MicronutrientsImpl &&
            (identical(other.vitamins, vitamins) ||
                other.vitamins == vitamins) &&
            (identical(other.minerals, minerals) ||
                other.minerals == minerals));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, vitamins, minerals);

  /// Create a copy of Micronutrients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MicronutrientsImplCopyWith<_$MicronutrientsImpl> get copyWith =>
      __$$MicronutrientsImplCopyWithImpl<_$MicronutrientsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MicronutrientsImplToJson(
      this,
    );
  }
}

abstract class _Micronutrients implements Micronutrients {
  const factory _Micronutrients(
      {final Vitamins? vitamins,
      final Minerals? minerals}) = _$MicronutrientsImpl;

  factory _Micronutrients.fromJson(Map<String, dynamic> json) =
      _$MicronutrientsImpl.fromJson;

  @override
  Vitamins? get vitamins;
  @override
  Minerals? get minerals;

  /// Create a copy of Micronutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MicronutrientsImplCopyWith<_$MicronutrientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Vitamins _$VitaminsFromJson(Map<String, dynamic> json) {
  return _Vitamins.fromJson(json);
}

/// @nodoc
mixin _$Vitamins {
  double? get vitaminA => throw _privateConstructorUsedError;
  double? get vitaminC => throw _privateConstructorUsedError;
  double? get vitaminD => throw _privateConstructorUsedError;
  double? get vitaminE => throw _privateConstructorUsedError;
  double? get vitaminK => throw _privateConstructorUsedError;
  double? get thiamin => throw _privateConstructorUsedError;
  double? get riboflavin => throw _privateConstructorUsedError;
  double? get niacin => throw _privateConstructorUsedError;
  double? get vitaminB6 => throw _privateConstructorUsedError;
  double? get vitaminB12 => throw _privateConstructorUsedError;
  double? get folate => throw _privateConstructorUsedError;

  /// Serializes this Vitamins to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Vitamins
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VitaminsCopyWith<Vitamins> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VitaminsCopyWith<$Res> {
  factory $VitaminsCopyWith(Vitamins value, $Res Function(Vitamins) then) =
      _$VitaminsCopyWithImpl<$Res, Vitamins>;
  @useResult
  $Res call(
      {double? vitaminA,
      double? vitaminC,
      double? vitaminD,
      double? vitaminE,
      double? vitaminK,
      double? thiamin,
      double? riboflavin,
      double? niacin,
      double? vitaminB6,
      double? vitaminB12,
      double? folate});
}

/// @nodoc
class _$VitaminsCopyWithImpl<$Res, $Val extends Vitamins>
    implements $VitaminsCopyWith<$Res> {
  _$VitaminsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Vitamins
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vitaminA = freezed,
    Object? vitaminC = freezed,
    Object? vitaminD = freezed,
    Object? vitaminE = freezed,
    Object? vitaminK = freezed,
    Object? thiamin = freezed,
    Object? riboflavin = freezed,
    Object? niacin = freezed,
    Object? vitaminB6 = freezed,
    Object? vitaminB12 = freezed,
    Object? folate = freezed,
  }) {
    return _then(_value.copyWith(
      vitaminA: freezed == vitaminA
          ? _value.vitaminA
          : vitaminA // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminC: freezed == vitaminC
          ? _value.vitaminC
          : vitaminC // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminD: freezed == vitaminD
          ? _value.vitaminD
          : vitaminD // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminE: freezed == vitaminE
          ? _value.vitaminE
          : vitaminE // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminK: freezed == vitaminK
          ? _value.vitaminK
          : vitaminK // ignore: cast_nullable_to_non_nullable
              as double?,
      thiamin: freezed == thiamin
          ? _value.thiamin
          : thiamin // ignore: cast_nullable_to_non_nullable
              as double?,
      riboflavin: freezed == riboflavin
          ? _value.riboflavin
          : riboflavin // ignore: cast_nullable_to_non_nullable
              as double?,
      niacin: freezed == niacin
          ? _value.niacin
          : niacin // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminB6: freezed == vitaminB6
          ? _value.vitaminB6
          : vitaminB6 // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminB12: freezed == vitaminB12
          ? _value.vitaminB12
          : vitaminB12 // ignore: cast_nullable_to_non_nullable
              as double?,
      folate: freezed == folate
          ? _value.folate
          : folate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VitaminsImplCopyWith<$Res>
    implements $VitaminsCopyWith<$Res> {
  factory _$$VitaminsImplCopyWith(
          _$VitaminsImpl value, $Res Function(_$VitaminsImpl) then) =
      __$$VitaminsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? vitaminA,
      double? vitaminC,
      double? vitaminD,
      double? vitaminE,
      double? vitaminK,
      double? thiamin,
      double? riboflavin,
      double? niacin,
      double? vitaminB6,
      double? vitaminB12,
      double? folate});
}

/// @nodoc
class __$$VitaminsImplCopyWithImpl<$Res>
    extends _$VitaminsCopyWithImpl<$Res, _$VitaminsImpl>
    implements _$$VitaminsImplCopyWith<$Res> {
  __$$VitaminsImplCopyWithImpl(
      _$VitaminsImpl _value, $Res Function(_$VitaminsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Vitamins
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vitaminA = freezed,
    Object? vitaminC = freezed,
    Object? vitaminD = freezed,
    Object? vitaminE = freezed,
    Object? vitaminK = freezed,
    Object? thiamin = freezed,
    Object? riboflavin = freezed,
    Object? niacin = freezed,
    Object? vitaminB6 = freezed,
    Object? vitaminB12 = freezed,
    Object? folate = freezed,
  }) {
    return _then(_$VitaminsImpl(
      vitaminA: freezed == vitaminA
          ? _value.vitaminA
          : vitaminA // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminC: freezed == vitaminC
          ? _value.vitaminC
          : vitaminC // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminD: freezed == vitaminD
          ? _value.vitaminD
          : vitaminD // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminE: freezed == vitaminE
          ? _value.vitaminE
          : vitaminE // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminK: freezed == vitaminK
          ? _value.vitaminK
          : vitaminK // ignore: cast_nullable_to_non_nullable
              as double?,
      thiamin: freezed == thiamin
          ? _value.thiamin
          : thiamin // ignore: cast_nullable_to_non_nullable
              as double?,
      riboflavin: freezed == riboflavin
          ? _value.riboflavin
          : riboflavin // ignore: cast_nullable_to_non_nullable
              as double?,
      niacin: freezed == niacin
          ? _value.niacin
          : niacin // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminB6: freezed == vitaminB6
          ? _value.vitaminB6
          : vitaminB6 // ignore: cast_nullable_to_non_nullable
              as double?,
      vitaminB12: freezed == vitaminB12
          ? _value.vitaminB12
          : vitaminB12 // ignore: cast_nullable_to_non_nullable
              as double?,
      folate: freezed == folate
          ? _value.folate
          : folate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VitaminsImpl implements _Vitamins {
  const _$VitaminsImpl(
      {this.vitaminA,
      this.vitaminC,
      this.vitaminD,
      this.vitaminE,
      this.vitaminK,
      this.thiamin,
      this.riboflavin,
      this.niacin,
      this.vitaminB6,
      this.vitaminB12,
      this.folate});

  factory _$VitaminsImpl.fromJson(Map<String, dynamic> json) =>
      _$$VitaminsImplFromJson(json);

  @override
  final double? vitaminA;
  @override
  final double? vitaminC;
  @override
  final double? vitaminD;
  @override
  final double? vitaminE;
  @override
  final double? vitaminK;
  @override
  final double? thiamin;
  @override
  final double? riboflavin;
  @override
  final double? niacin;
  @override
  final double? vitaminB6;
  @override
  final double? vitaminB12;
  @override
  final double? folate;

  @override
  String toString() {
    return 'Vitamins(vitaminA: $vitaminA, vitaminC: $vitaminC, vitaminD: $vitaminD, vitaminE: $vitaminE, vitaminK: $vitaminK, thiamin: $thiamin, riboflavin: $riboflavin, niacin: $niacin, vitaminB6: $vitaminB6, vitaminB12: $vitaminB12, folate: $folate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VitaminsImpl &&
            (identical(other.vitaminA, vitaminA) ||
                other.vitaminA == vitaminA) &&
            (identical(other.vitaminC, vitaminC) ||
                other.vitaminC == vitaminC) &&
            (identical(other.vitaminD, vitaminD) ||
                other.vitaminD == vitaminD) &&
            (identical(other.vitaminE, vitaminE) ||
                other.vitaminE == vitaminE) &&
            (identical(other.vitaminK, vitaminK) ||
                other.vitaminK == vitaminK) &&
            (identical(other.thiamin, thiamin) || other.thiamin == thiamin) &&
            (identical(other.riboflavin, riboflavin) ||
                other.riboflavin == riboflavin) &&
            (identical(other.niacin, niacin) || other.niacin == niacin) &&
            (identical(other.vitaminB6, vitaminB6) ||
                other.vitaminB6 == vitaminB6) &&
            (identical(other.vitaminB12, vitaminB12) ||
                other.vitaminB12 == vitaminB12) &&
            (identical(other.folate, folate) || other.folate == folate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      vitaminA,
      vitaminC,
      vitaminD,
      vitaminE,
      vitaminK,
      thiamin,
      riboflavin,
      niacin,
      vitaminB6,
      vitaminB12,
      folate);

  /// Create a copy of Vitamins
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VitaminsImplCopyWith<_$VitaminsImpl> get copyWith =>
      __$$VitaminsImplCopyWithImpl<_$VitaminsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VitaminsImplToJson(
      this,
    );
  }
}

abstract class _Vitamins implements Vitamins {
  const factory _Vitamins(
      {final double? vitaminA,
      final double? vitaminC,
      final double? vitaminD,
      final double? vitaminE,
      final double? vitaminK,
      final double? thiamin,
      final double? riboflavin,
      final double? niacin,
      final double? vitaminB6,
      final double? vitaminB12,
      final double? folate}) = _$VitaminsImpl;

  factory _Vitamins.fromJson(Map<String, dynamic> json) =
      _$VitaminsImpl.fromJson;

  @override
  double? get vitaminA;
  @override
  double? get vitaminC;
  @override
  double? get vitaminD;
  @override
  double? get vitaminE;
  @override
  double? get vitaminK;
  @override
  double? get thiamin;
  @override
  double? get riboflavin;
  @override
  double? get niacin;
  @override
  double? get vitaminB6;
  @override
  double? get vitaminB12;
  @override
  double? get folate;

  /// Create a copy of Vitamins
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VitaminsImplCopyWith<_$VitaminsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Minerals _$MineralsFromJson(Map<String, dynamic> json) {
  return _Minerals.fromJson(json);
}

/// @nodoc
mixin _$Minerals {
  double? get calcium => throw _privateConstructorUsedError;
  double? get iron => throw _privateConstructorUsedError;
  double? get magnesium => throw _privateConstructorUsedError;
  double? get phosphorus => throw _privateConstructorUsedError;
  double? get potassium => throw _privateConstructorUsedError;
  double? get sodium => throw _privateConstructorUsedError;
  double? get zinc => throw _privateConstructorUsedError;
  double? get selenium => throw _privateConstructorUsedError;

  /// Serializes this Minerals to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Minerals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MineralsCopyWith<Minerals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MineralsCopyWith<$Res> {
  factory $MineralsCopyWith(Minerals value, $Res Function(Minerals) then) =
      _$MineralsCopyWithImpl<$Res, Minerals>;
  @useResult
  $Res call(
      {double? calcium,
      double? iron,
      double? magnesium,
      double? phosphorus,
      double? potassium,
      double? sodium,
      double? zinc,
      double? selenium});
}

/// @nodoc
class _$MineralsCopyWithImpl<$Res, $Val extends Minerals>
    implements $MineralsCopyWith<$Res> {
  _$MineralsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Minerals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calcium = freezed,
    Object? iron = freezed,
    Object? magnesium = freezed,
    Object? phosphorus = freezed,
    Object? potassium = freezed,
    Object? sodium = freezed,
    Object? zinc = freezed,
    Object? selenium = freezed,
  }) {
    return _then(_value.copyWith(
      calcium: freezed == calcium
          ? _value.calcium
          : calcium // ignore: cast_nullable_to_non_nullable
              as double?,
      iron: freezed == iron
          ? _value.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as double?,
      magnesium: freezed == magnesium
          ? _value.magnesium
          : magnesium // ignore: cast_nullable_to_non_nullable
              as double?,
      phosphorus: freezed == phosphorus
          ? _value.phosphorus
          : phosphorus // ignore: cast_nullable_to_non_nullable
              as double?,
      potassium: freezed == potassium
          ? _value.potassium
          : potassium // ignore: cast_nullable_to_non_nullable
              as double?,
      sodium: freezed == sodium
          ? _value.sodium
          : sodium // ignore: cast_nullable_to_non_nullable
              as double?,
      zinc: freezed == zinc
          ? _value.zinc
          : zinc // ignore: cast_nullable_to_non_nullable
              as double?,
      selenium: freezed == selenium
          ? _value.selenium
          : selenium // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MineralsImplCopyWith<$Res>
    implements $MineralsCopyWith<$Res> {
  factory _$$MineralsImplCopyWith(
          _$MineralsImpl value, $Res Function(_$MineralsImpl) then) =
      __$$MineralsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? calcium,
      double? iron,
      double? magnesium,
      double? phosphorus,
      double? potassium,
      double? sodium,
      double? zinc,
      double? selenium});
}

/// @nodoc
class __$$MineralsImplCopyWithImpl<$Res>
    extends _$MineralsCopyWithImpl<$Res, _$MineralsImpl>
    implements _$$MineralsImplCopyWith<$Res> {
  __$$MineralsImplCopyWithImpl(
      _$MineralsImpl _value, $Res Function(_$MineralsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Minerals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calcium = freezed,
    Object? iron = freezed,
    Object? magnesium = freezed,
    Object? phosphorus = freezed,
    Object? potassium = freezed,
    Object? sodium = freezed,
    Object? zinc = freezed,
    Object? selenium = freezed,
  }) {
    return _then(_$MineralsImpl(
      calcium: freezed == calcium
          ? _value.calcium
          : calcium // ignore: cast_nullable_to_non_nullable
              as double?,
      iron: freezed == iron
          ? _value.iron
          : iron // ignore: cast_nullable_to_non_nullable
              as double?,
      magnesium: freezed == magnesium
          ? _value.magnesium
          : magnesium // ignore: cast_nullable_to_non_nullable
              as double?,
      phosphorus: freezed == phosphorus
          ? _value.phosphorus
          : phosphorus // ignore: cast_nullable_to_non_nullable
              as double?,
      potassium: freezed == potassium
          ? _value.potassium
          : potassium // ignore: cast_nullable_to_non_nullable
              as double?,
      sodium: freezed == sodium
          ? _value.sodium
          : sodium // ignore: cast_nullable_to_non_nullable
              as double?,
      zinc: freezed == zinc
          ? _value.zinc
          : zinc // ignore: cast_nullable_to_non_nullable
              as double?,
      selenium: freezed == selenium
          ? _value.selenium
          : selenium // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MineralsImpl implements _Minerals {
  const _$MineralsImpl(
      {this.calcium,
      this.iron,
      this.magnesium,
      this.phosphorus,
      this.potassium,
      this.sodium,
      this.zinc,
      this.selenium});

  factory _$MineralsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MineralsImplFromJson(json);

  @override
  final double? calcium;
  @override
  final double? iron;
  @override
  final double? magnesium;
  @override
  final double? phosphorus;
  @override
  final double? potassium;
  @override
  final double? sodium;
  @override
  final double? zinc;
  @override
  final double? selenium;

  @override
  String toString() {
    return 'Minerals(calcium: $calcium, iron: $iron, magnesium: $magnesium, phosphorus: $phosphorus, potassium: $potassium, sodium: $sodium, zinc: $zinc, selenium: $selenium)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MineralsImpl &&
            (identical(other.calcium, calcium) || other.calcium == calcium) &&
            (identical(other.iron, iron) || other.iron == iron) &&
            (identical(other.magnesium, magnesium) ||
                other.magnesium == magnesium) &&
            (identical(other.phosphorus, phosphorus) ||
                other.phosphorus == phosphorus) &&
            (identical(other.potassium, potassium) ||
                other.potassium == potassium) &&
            (identical(other.sodium, sodium) || other.sodium == sodium) &&
            (identical(other.zinc, zinc) || other.zinc == zinc) &&
            (identical(other.selenium, selenium) ||
                other.selenium == selenium));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calcium, iron, magnesium,
      phosphorus, potassium, sodium, zinc, selenium);

  /// Create a copy of Minerals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MineralsImplCopyWith<_$MineralsImpl> get copyWith =>
      __$$MineralsImplCopyWithImpl<_$MineralsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MineralsImplToJson(
      this,
    );
  }
}

abstract class _Minerals implements Minerals {
  const factory _Minerals(
      {final double? calcium,
      final double? iron,
      final double? magnesium,
      final double? phosphorus,
      final double? potassium,
      final double? sodium,
      final double? zinc,
      final double? selenium}) = _$MineralsImpl;

  factory _Minerals.fromJson(Map<String, dynamic> json) =
      _$MineralsImpl.fromJson;

  @override
  double? get calcium;
  @override
  double? get iron;
  @override
  double? get magnesium;
  @override
  double? get phosphorus;
  @override
  double? get potassium;
  @override
  double? get sodium;
  @override
  double? get zinc;
  @override
  double? get selenium;

  /// Create a copy of Minerals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MineralsImplCopyWith<_$MineralsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
