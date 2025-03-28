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
  List<Fragment$ShoppingCart> get shoppingCarts;
  String? get currentCartId;
  Fragment$ShoppingCart? get currentCart;
  String? get error;
  bool get isLoading;

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
            const DeepCollectionEquality()
                .equals(other.shoppingCarts, shoppingCarts) &&
            (identical(other.currentCartId, currentCartId) ||
                other.currentCartId == currentCartId) &&
            (identical(other.currentCart, currentCart) ||
                other.currentCart == currentCart) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(shoppingCarts),
      currentCartId,
      currentCart,
      error,
      isLoading);

  @override
  String toString() {
    return 'ShoppingCartModel(shoppingCarts: $shoppingCarts, currentCartId: $currentCartId, currentCart: $currentCart, error: $error, isLoading: $isLoading)';
  }
}

/// @nodoc
abstract mixin class $ShoppingCartModelCopyWith<$Res> {
  factory $ShoppingCartModelCopyWith(
          ShoppingCartModel value, $Res Function(ShoppingCartModel) _then) =
      _$ShoppingCartModelCopyWithImpl;
  @useResult
  $Res call(
      {List<Fragment$ShoppingCart> shoppingCarts,
      String? currentCartId,
      Fragment$ShoppingCart? currentCart,
      String? error,
      bool isLoading});
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
    Object? shoppingCarts = null,
    Object? currentCartId = freezed,
    Object? currentCart = freezed,
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(_self.copyWith(
      shoppingCarts: null == shoppingCarts
          ? _self.shoppingCarts
          : shoppingCarts // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ShoppingCart>,
      currentCartId: freezed == currentCartId
          ? _self.currentCartId
          : currentCartId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentCart: freezed == currentCart
          ? _self.currentCart
          : currentCart // ignore: cast_nullable_to_non_nullable
              as Fragment$ShoppingCart?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _ShoppingCartModel extends ShoppingCartModel {
  const _ShoppingCartModel(
      {final List<Fragment$ShoppingCart> shoppingCarts = const [],
      this.currentCartId,
      this.currentCart,
      this.error,
      this.isLoading = false})
      : _shoppingCarts = shoppingCarts,
        super._();

  final List<Fragment$ShoppingCart> _shoppingCarts;
  @override
  @JsonKey()
  List<Fragment$ShoppingCart> get shoppingCarts {
    if (_shoppingCarts is EqualUnmodifiableListView) return _shoppingCarts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoppingCarts);
  }

  @override
  final String? currentCartId;
  @override
  final Fragment$ShoppingCart? currentCart;
  @override
  final String? error;
  @override
  @JsonKey()
  final bool isLoading;

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
            const DeepCollectionEquality()
                .equals(other._shoppingCarts, _shoppingCarts) &&
            (identical(other.currentCartId, currentCartId) ||
                other.currentCartId == currentCartId) &&
            (identical(other.currentCart, currentCart) ||
                other.currentCart == currentCart) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_shoppingCarts),
      currentCartId,
      currentCart,
      error,
      isLoading);

  @override
  String toString() {
    return 'ShoppingCartModel(shoppingCarts: $shoppingCarts, currentCartId: $currentCartId, currentCart: $currentCart, error: $error, isLoading: $isLoading)';
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
      {List<Fragment$ShoppingCart> shoppingCarts,
      String? currentCartId,
      Fragment$ShoppingCart? currentCart,
      String? error,
      bool isLoading});
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
    Object? shoppingCarts = null,
    Object? currentCartId = freezed,
    Object? currentCart = freezed,
    Object? error = freezed,
    Object? isLoading = null,
  }) {
    return _then(_ShoppingCartModel(
      shoppingCarts: null == shoppingCarts
          ? _self._shoppingCarts
          : shoppingCarts // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ShoppingCart>,
      currentCartId: freezed == currentCartId
          ? _self.currentCartId
          : currentCartId // ignore: cast_nullable_to_non_nullable
              as String?,
      currentCart: freezed == currentCart
          ? _self.currentCart
          : currentCart // ignore: cast_nullable_to_non_nullable
              as Fragment$ShoppingCart?,
      error: freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
