// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ShoppingCartModel _$ShoppingCartModelFromJson(Map<String, dynamic> json) {
  return _ShoppingCartModel.fromJson(json);
}

/// @nodoc
mixin _$ShoppingCartModel {
  List<CartItem> get items => throw _privateConstructorUsedError;
  double get totalPrice => throw _privateConstructorUsedError;
  List<ShoppingCartViewModel> get shoppingCarts =>
      throw _privateConstructorUsedError;
  String? get currentCartId => throw _privateConstructorUsedError;

  /// Serializes this ShoppingCartModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShoppingCartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShoppingCartModelCopyWith<ShoppingCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartModelCopyWith<$Res> {
  factory $ShoppingCartModelCopyWith(
          ShoppingCartModel value, $Res Function(ShoppingCartModel) then) =
      _$ShoppingCartModelCopyWithImpl<$Res, ShoppingCartModel>;
  @useResult
  $Res call(
      {List<CartItem> items,
      double totalPrice,
      List<ShoppingCartViewModel> shoppingCarts,
      String? currentCartId});
}

/// @nodoc
class _$ShoppingCartModelCopyWithImpl<$Res, $Val extends ShoppingCartModel>
    implements $ShoppingCartModelCopyWith<$Res> {
  _$ShoppingCartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShoppingCartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPrice = null,
    Object? shoppingCarts = null,
    Object? currentCartId = freezed,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      shoppingCarts: null == shoppingCarts
          ? _value.shoppingCarts
          : shoppingCarts // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartViewModel>,
      currentCartId: freezed == currentCartId
          ? _value.currentCartId
          : currentCartId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoppingCartModelImplCopyWith<$Res>
    implements $ShoppingCartModelCopyWith<$Res> {
  factory _$$ShoppingCartModelImplCopyWith(_$ShoppingCartModelImpl value,
          $Res Function(_$ShoppingCartModelImpl) then) =
      __$$ShoppingCartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CartItem> items,
      double totalPrice,
      List<ShoppingCartViewModel> shoppingCarts,
      String? currentCartId});
}

/// @nodoc
class __$$ShoppingCartModelImplCopyWithImpl<$Res>
    extends _$ShoppingCartModelCopyWithImpl<$Res, _$ShoppingCartModelImpl>
    implements _$$ShoppingCartModelImplCopyWith<$Res> {
  __$$ShoppingCartModelImplCopyWithImpl(_$ShoppingCartModelImpl _value,
      $Res Function(_$ShoppingCartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? totalPrice = null,
    Object? shoppingCarts = null,
    Object? currentCartId = freezed,
  }) {
    return _then(_$ShoppingCartModelImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      shoppingCarts: null == shoppingCarts
          ? _value._shoppingCarts
          : shoppingCarts // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartViewModel>,
      currentCartId: freezed == currentCartId
          ? _value.currentCartId
          : currentCartId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShoppingCartModelImpl implements _ShoppingCartModel {
  const _$ShoppingCartModelImpl(
      {final List<CartItem> items = const [],
      this.totalPrice = 0.0,
      final List<ShoppingCartViewModel> shoppingCarts = const [],
      this.currentCartId})
      : _items = items,
        _shoppingCarts = shoppingCarts;

  factory _$ShoppingCartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingCartModelImplFromJson(json);

  final List<CartItem> _items;
  @override
  @JsonKey()
  List<CartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final double totalPrice;
  final List<ShoppingCartViewModel> _shoppingCarts;
  @override
  @JsonKey()
  List<ShoppingCartViewModel> get shoppingCarts {
    if (_shoppingCarts is EqualUnmodifiableListView) return _shoppingCarts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoppingCarts);
  }

  @override
  final String? currentCartId;

  @override
  String toString() {
    return 'ShoppingCartModel(items: $items, totalPrice: $totalPrice, shoppingCarts: $shoppingCarts, currentCartId: $currentCartId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingCartModelImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other._shoppingCarts, _shoppingCarts) &&
            (identical(other.currentCartId, currentCartId) ||
                other.currentCartId == currentCartId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      totalPrice,
      const DeepCollectionEquality().hash(_shoppingCarts),
      currentCartId);

  /// Create a copy of ShoppingCartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingCartModelImplCopyWith<_$ShoppingCartModelImpl> get copyWith =>
      __$$ShoppingCartModelImplCopyWithImpl<_$ShoppingCartModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingCartModelImplToJson(
      this,
    );
  }
}

abstract class _ShoppingCartModel implements ShoppingCartModel {
  const factory _ShoppingCartModel(
      {final List<CartItem> items,
      final double totalPrice,
      final List<ShoppingCartViewModel> shoppingCarts,
      final String? currentCartId}) = _$ShoppingCartModelImpl;

  factory _ShoppingCartModel.fromJson(Map<String, dynamic> json) =
      _$ShoppingCartModelImpl.fromJson;

  @override
  List<CartItem> get items;
  @override
  double get totalPrice;
  @override
  List<ShoppingCartViewModel> get shoppingCarts;
  @override
  String? get currentCartId;

  /// Create a copy of ShoppingCartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShoppingCartModelImplCopyWith<_$ShoppingCartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
