// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ShoppingCartModel {
  List<Fragment$ShoppingCartItem>
      get items; // Use Fragment$ShoppingCartItem directly
  double get totalPrice;
  List<ShoppingCartViewModel> get shoppingCarts;
  String? get currentCartId;

  /// Create a copy of ShoppingCartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShoppingCartModelCopyWith<ShoppingCartModel> get copyWith =>
      _$ShoppingCartModelCopyWithImpl<ShoppingCartModel>(
          this as ShoppingCartModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShoppingCartModel &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other.shoppingCarts, shoppingCarts) &&
            (identical(other.currentCartId, currentCartId) ||
                other.currentCartId == currentCartId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      totalPrice,
      const DeepCollectionEquality().hash(shoppingCarts),
      currentCartId);

  @override
  String toString() {
    return 'ShoppingCartModel(items: $items, totalPrice: $totalPrice, shoppingCarts: $shoppingCarts, currentCartId: $currentCartId)';
  }
}

/// @nodoc
abstract mixin class $ShoppingCartModelCopyWith<$Res> {
  factory $ShoppingCartModelCopyWith(
          ShoppingCartModel value, $Res Function(ShoppingCartModel) _then) =
      _$ShoppingCartModelCopyWithImpl;
  @useResult
  $Res call(
      {List<Fragment$ShoppingCartItem> items,
      double totalPrice,
      List<ShoppingCartViewModel> shoppingCarts,
      String? currentCartId});
}

/// @nodoc
class _$ShoppingCartModelCopyWithImpl<$Res>
    implements $ShoppingCartModelCopyWith<$Res> {
  _$ShoppingCartModelCopyWithImpl(this._self, this._then);

  final ShoppingCartModel _self;
  final $Res Function(ShoppingCartModel) _then;

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
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ShoppingCartItem>,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      shoppingCarts: null == shoppingCarts
          ? _self.shoppingCarts
          : shoppingCarts // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartViewModel>,
      currentCartId: freezed == currentCartId
          ? _self.currentCartId
          : currentCartId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _ShoppingCartModel implements ShoppingCartModel {
  const _ShoppingCartModel(
      {final List<Fragment$ShoppingCartItem> items = const [],
      this.totalPrice = 0.0,
      final List<ShoppingCartViewModel> shoppingCarts = const [],
      this.currentCartId})
      : _items = items,
        _shoppingCarts = shoppingCarts;

  final List<Fragment$ShoppingCartItem> _items;
  @override
  @JsonKey()
  List<Fragment$ShoppingCartItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

// Use Fragment$ShoppingCartItem directly
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

  /// Create a copy of ShoppingCartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShoppingCartModelCopyWith<_ShoppingCartModel> get copyWith =>
      __$ShoppingCartModelCopyWithImpl<_ShoppingCartModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShoppingCartModel &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality()
                .equals(other._shoppingCarts, _shoppingCarts) &&
            (identical(other.currentCartId, currentCartId) ||
                other.currentCartId == currentCartId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      totalPrice,
      const DeepCollectionEquality().hash(_shoppingCarts),
      currentCartId);

  @override
  String toString() {
    return 'ShoppingCartModel(items: $items, totalPrice: $totalPrice, shoppingCarts: $shoppingCarts, currentCartId: $currentCartId)';
  }
}

/// @nodoc
abstract mixin class _$ShoppingCartModelCopyWith<$Res>
    implements $ShoppingCartModelCopyWith<$Res> {
  factory _$ShoppingCartModelCopyWith(
          _ShoppingCartModel value, $Res Function(_ShoppingCartModel) _then) =
      __$ShoppingCartModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<Fragment$ShoppingCartItem> items,
      double totalPrice,
      List<ShoppingCartViewModel> shoppingCarts,
      String? currentCartId});
}

/// @nodoc
class __$ShoppingCartModelCopyWithImpl<$Res>
    implements _$ShoppingCartModelCopyWith<$Res> {
  __$ShoppingCartModelCopyWithImpl(this._self, this._then);

  final _ShoppingCartModel _self;
  final $Res Function(_ShoppingCartModel) _then;

  /// Create a copy of ShoppingCartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? totalPrice = null,
    Object? shoppingCarts = null,
    Object? currentCartId = freezed,
  }) {
    return _then(_ShoppingCartModel(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ShoppingCartItem>,
      totalPrice: null == totalPrice
          ? _self.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      shoppingCarts: null == shoppingCarts
          ? _self._shoppingCarts
          : shoppingCarts // ignore: cast_nullable_to_non_nullable
              as List<ShoppingCartViewModel>,
      currentCartId: freezed == currentCartId
          ? _self.currentCartId
          : currentCartId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
