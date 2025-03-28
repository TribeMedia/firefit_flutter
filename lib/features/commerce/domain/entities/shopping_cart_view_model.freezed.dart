// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuItemViewModel {
  String get id;
  String get name;
  double get price;
  String? get imageUrl;

  /// Create a copy of MenuItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MenuItemViewModelCopyWith<MenuItemViewModel> get copyWith =>
      _$MenuItemViewModelCopyWithImpl<MenuItemViewModel>(
          this as MenuItemViewModel, _$identity);

  /// Serializes this MenuItemViewModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MenuItemViewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, imageUrl);

  @override
  String toString() {
    return 'MenuItemViewModel(id: $id, name: $name, price: $price, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class $MenuItemViewModelCopyWith<$Res> {
  factory $MenuItemViewModelCopyWith(
          MenuItemViewModel value, $Res Function(MenuItemViewModel) _then) =
      _$MenuItemViewModelCopyWithImpl;
  @useResult
  $Res call({String id, String name, double price, String? imageUrl});
}

/// @nodoc
class _$MenuItemViewModelCopyWithImpl<$Res>
    implements $MenuItemViewModelCopyWith<$Res> {
  _$MenuItemViewModelCopyWithImpl(this._self, this._then);

  final MenuItemViewModel _self;
  final $Res Function(MenuItemViewModel) _then;

  /// Create a copy of MenuItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _MenuItemViewModel extends MenuItemViewModel {
  const _MenuItemViewModel(
      {required this.id,
      required this.name,
      required this.price,
      this.imageUrl})
      : super._();
  factory _MenuItemViewModel.fromJson(Map<String, dynamic> json) =>
      _$MenuItemViewModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String? imageUrl;

  /// Create a copy of MenuItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MenuItemViewModelCopyWith<_MenuItemViewModel> get copyWith =>
      __$MenuItemViewModelCopyWithImpl<_MenuItemViewModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MenuItemViewModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuItemViewModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, imageUrl);

  @override
  String toString() {
    return 'MenuItemViewModel(id: $id, name: $name, price: $price, imageUrl: $imageUrl)';
  }
}

/// @nodoc
abstract mixin class _$MenuItemViewModelCopyWith<$Res>
    implements $MenuItemViewModelCopyWith<$Res> {
  factory _$MenuItemViewModelCopyWith(
          _MenuItemViewModel value, $Res Function(_MenuItemViewModel) _then) =
      __$MenuItemViewModelCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, double price, String? imageUrl});
}

/// @nodoc
class __$MenuItemViewModelCopyWithImpl<$Res>
    implements _$MenuItemViewModelCopyWith<$Res> {
  __$MenuItemViewModelCopyWithImpl(this._self, this._then);

  final _MenuItemViewModel _self;
  final $Res Function(_MenuItemViewModel) _then;

  /// Create a copy of MenuItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? imageUrl = freezed,
  }) {
    return _then(_MenuItemViewModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ShoppingCartViewModel {
  String get id;
  List<MenuItemViewModel> get items;
  List<ShoppingCartItem> get shoppingCartItems;
  double? get subtotal;
  double? get total;
  int? get itemCount;

  /// Create a copy of ShoppingCartViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShoppingCartViewModelCopyWith<ShoppingCartViewModel> get copyWith =>
      _$ShoppingCartViewModelCopyWithImpl<ShoppingCartViewModel>(
          this as ShoppingCartViewModel, _$identity);

  /// Serializes this ShoppingCartViewModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShoppingCartViewModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.items, items) &&
            const DeepCollectionEquality()
                .equals(other.shoppingCartItems, shoppingCartItems) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(items),
      const DeepCollectionEquality().hash(shoppingCartItems),
      subtotal,
      total,
      itemCount);

  @override
  String toString() {
    return 'ShoppingCartViewModel(id: $id, items: $items, shoppingCartItems: $shoppingCartItems, subtotal: $subtotal, total: $total, itemCount: $itemCount)';
  }
}

/// @nodoc
abstract mixin class $ShoppingCartViewModelCopyWith<$Res> {
  factory $ShoppingCartViewModelCopyWith(ShoppingCartViewModel value,
          $Res Function(ShoppingCartViewModel) _then) =
      _$ShoppingCartViewModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      List<MenuItemViewModel> items,
      List<Fragment$ShoppingCartItem> shoppingCartItems,
      double? subtotal,
      double? total,
      int? itemCount});
}

/// @nodoc
class _$ShoppingCartViewModelCopyWithImpl<$Res>
    implements $ShoppingCartViewModelCopyWith<$Res> {
  _$ShoppingCartViewModelCopyWithImpl(this._self, this._then);

  final ShoppingCartViewModel _self;
  final $Res Function(ShoppingCartViewModel) _then;

  /// Create a copy of ShoppingCartViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? shoppingCartItems = null,
    Object? subtotal = freezed,
    Object? total = freezed,
    Object? itemCount = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemViewModel>,
      shoppingCartItems: null == shoppingCartItems
          ? _self.shoppingCartItems!
          : shoppingCartItems // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ShoppingCartItem>,
      subtotal: freezed == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      itemCount: freezed == itemCount
          ? _self.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ShoppingCartViewModel extends ShoppingCartViewModel {
  const _ShoppingCartViewModel(
      {required this.id,
      required final List<MenuItemViewModel> items,
      required final List<Fragment$ShoppingCartItem> shoppingCartItems,
      this.subtotal,
      this.total,
      this.itemCount})
      : _items = items,
        _shoppingCartItems = shoppingCartItems,
        super._();
  factory _ShoppingCartViewModel.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartViewModelFromJson(json);

  @override
  final String id;
  final List<MenuItemViewModel> _items;
  @override
  List<MenuItemViewModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<Fragment$ShoppingCartItem> _shoppingCartItems;
  @override
  List<Fragment$ShoppingCartItem> get shoppingCartItems {
    if (_shoppingCartItems is EqualUnmodifiableListView)
      return _shoppingCartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_shoppingCartItems);
  }

  @override
  final double? subtotal;
  @override
  final double? total;
  @override
  final int? itemCount;

  /// Create a copy of ShoppingCartViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShoppingCartViewModelCopyWith<_ShoppingCartViewModel> get copyWith =>
      __$ShoppingCartViewModelCopyWithImpl<_ShoppingCartViewModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ShoppingCartViewModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShoppingCartViewModel &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality()
                .equals(other._shoppingCartItems, _shoppingCartItems) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_shoppingCartItems),
      subtotal,
      total,
      itemCount);

  @override
  String toString() {
    return 'ShoppingCartViewModel(id: $id, items: $items, shoppingCartItems: $shoppingCartItems, subtotal: $subtotal, total: $total, itemCount: $itemCount)';
  }
}

/// @nodoc
abstract mixin class _$ShoppingCartViewModelCopyWith<$Res>
    implements $ShoppingCartViewModelCopyWith<$Res> {
  factory _$ShoppingCartViewModelCopyWith(_ShoppingCartViewModel value,
          $Res Function(_ShoppingCartViewModel) _then) =
      __$ShoppingCartViewModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      List<MenuItemViewModel> items,
      List<Fragment$ShoppingCartItem> shoppingCartItems,
      double? subtotal,
      double? total,
      int? itemCount});
}

/// @nodoc
class __$ShoppingCartViewModelCopyWithImpl<$Res>
    implements _$ShoppingCartViewModelCopyWith<$Res> {
  __$ShoppingCartViewModelCopyWithImpl(this._self, this._then);

  final _ShoppingCartViewModel _self;
  final $Res Function(_ShoppingCartViewModel) _then;

  /// Create a copy of ShoppingCartViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? shoppingCartItems = null,
    Object? subtotal = freezed,
    Object? total = freezed,
    Object? itemCount = freezed,
  }) {
    return _then(_ShoppingCartViewModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemViewModel>,
      shoppingCartItems: null == shoppingCartItems
          ? _self._shoppingCartItems
          : shoppingCartItems // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ShoppingCartItem>,
      subtotal: freezed == subtotal
          ? _self.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      itemCount: freezed == itemCount
          ? _self.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
