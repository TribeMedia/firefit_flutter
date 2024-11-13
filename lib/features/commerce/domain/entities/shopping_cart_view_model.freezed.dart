// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_cart_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MenuItemViewModel _$MenuItemViewModelFromJson(Map<String, dynamic> json) {
  return _MenuItemViewModel.fromJson(json);
}

/// @nodoc
mixin _$MenuItemViewModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  /// Serializes this MenuItemViewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemViewModelCopyWith<MenuItemViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemViewModelCopyWith<$Res> {
  factory $MenuItemViewModelCopyWith(
          MenuItemViewModel value, $Res Function(MenuItemViewModel) then) =
      _$MenuItemViewModelCopyWithImpl<$Res, MenuItemViewModel>;
  @useResult
  $Res call({String id, String name, double price, String? imageUrl});
}

/// @nodoc
class _$MenuItemViewModelCopyWithImpl<$Res, $Val extends MenuItemViewModel>
    implements $MenuItemViewModelCopyWith<$Res> {
  _$MenuItemViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuItemViewModelImplCopyWith<$Res>
    implements $MenuItemViewModelCopyWith<$Res> {
  factory _$$MenuItemViewModelImplCopyWith(_$MenuItemViewModelImpl value,
          $Res Function(_$MenuItemViewModelImpl) then) =
      __$$MenuItemViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, double price, String? imageUrl});
}

/// @nodoc
class __$$MenuItemViewModelImplCopyWithImpl<$Res>
    extends _$MenuItemViewModelCopyWithImpl<$Res, _$MenuItemViewModelImpl>
    implements _$$MenuItemViewModelImplCopyWith<$Res> {
  __$$MenuItemViewModelImplCopyWithImpl(_$MenuItemViewModelImpl _value,
      $Res Function(_$MenuItemViewModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$MenuItemViewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemViewModelImpl implements _MenuItemViewModel {
  const _$MenuItemViewModelImpl(
      {required this.id,
      required this.name,
      required this.price,
      this.imageUrl});

  factory _$MenuItemViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemViewModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double price;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'MenuItemViewModel(id: $id, name: $name, price: $price, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, imageUrl);

  /// Create a copy of MenuItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemViewModelImplCopyWith<_$MenuItemViewModelImpl> get copyWith =>
      __$$MenuItemViewModelImplCopyWithImpl<_$MenuItemViewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemViewModelImplToJson(
      this,
    );
  }
}

abstract class _MenuItemViewModel implements MenuItemViewModel {
  const factory _MenuItemViewModel(
      {required final String id,
      required final String name,
      required final double price,
      final String? imageUrl}) = _$MenuItemViewModelImpl;

  factory _MenuItemViewModel.fromJson(Map<String, dynamic> json) =
      _$MenuItemViewModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get price;
  @override
  String? get imageUrl;

  /// Create a copy of MenuItemViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemViewModelImplCopyWith<_$MenuItemViewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShoppingCartViewModel _$ShoppingCartViewModelFromJson(
    Map<String, dynamic> json) {
  return _ShoppingCartViewModel.fromJson(json);
}

/// @nodoc
mixin _$ShoppingCartViewModel {
  String get id => throw _privateConstructorUsedError;
  List<MenuItemViewModel> get items => throw _privateConstructorUsedError;
  double? get subtotal => throw _privateConstructorUsedError;
  double? get total => throw _privateConstructorUsedError;
  int? get itemCount => throw _privateConstructorUsedError;

  /// Serializes this ShoppingCartViewModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShoppingCartViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShoppingCartViewModelCopyWith<ShoppingCartViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartViewModelCopyWith<$Res> {
  factory $ShoppingCartViewModelCopyWith(ShoppingCartViewModel value,
          $Res Function(ShoppingCartViewModel) then) =
      _$ShoppingCartViewModelCopyWithImpl<$Res, ShoppingCartViewModel>;
  @useResult
  $Res call(
      {String id,
      List<MenuItemViewModel> items,
      double? subtotal,
      double? total,
      int? itemCount});
}

/// @nodoc
class _$ShoppingCartViewModelCopyWithImpl<$Res,
        $Val extends ShoppingCartViewModel>
    implements $ShoppingCartViewModelCopyWith<$Res> {
  _$ShoppingCartViewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShoppingCartViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? subtotal = freezed,
    Object? total = freezed,
    Object? itemCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemViewModel>,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      itemCount: freezed == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShoppingCartViewModelImplCopyWith<$Res>
    implements $ShoppingCartViewModelCopyWith<$Res> {
  factory _$$ShoppingCartViewModelImplCopyWith(
          _$ShoppingCartViewModelImpl value,
          $Res Function(_$ShoppingCartViewModelImpl) then) =
      __$$ShoppingCartViewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      List<MenuItemViewModel> items,
      double? subtotal,
      double? total,
      int? itemCount});
}

/// @nodoc
class __$$ShoppingCartViewModelImplCopyWithImpl<$Res>
    extends _$ShoppingCartViewModelCopyWithImpl<$Res,
        _$ShoppingCartViewModelImpl>
    implements _$$ShoppingCartViewModelImplCopyWith<$Res> {
  __$$ShoppingCartViewModelImplCopyWithImpl(_$ShoppingCartViewModelImpl _value,
      $Res Function(_$ShoppingCartViewModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShoppingCartViewModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? items = null,
    Object? subtotal = freezed,
    Object? total = freezed,
    Object? itemCount = freezed,
  }) {
    return _then(_$ShoppingCartViewModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItemViewModel>,
      subtotal: freezed == subtotal
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double?,
      itemCount: freezed == itemCount
          ? _value.itemCount
          : itemCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShoppingCartViewModelImpl implements _ShoppingCartViewModel {
  const _$ShoppingCartViewModelImpl(
      {required this.id,
      required final List<MenuItemViewModel> items,
      this.subtotal,
      this.total,
      this.itemCount})
      : _items = items;

  factory _$ShoppingCartViewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShoppingCartViewModelImplFromJson(json);

  @override
  final String id;
  final List<MenuItemViewModel> _items;
  @override
  List<MenuItemViewModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double? subtotal;
  @override
  final double? total;
  @override
  final int? itemCount;

  @override
  String toString() {
    return 'ShoppingCartViewModel(id: $id, items: $items, subtotal: $subtotal, total: $total, itemCount: $itemCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShoppingCartViewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.subtotal, subtotal) ||
                other.subtotal == subtotal) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.itemCount, itemCount) ||
                other.itemCount == itemCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id,
      const DeepCollectionEquality().hash(_items), subtotal, total, itemCount);

  /// Create a copy of ShoppingCartViewModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShoppingCartViewModelImplCopyWith<_$ShoppingCartViewModelImpl>
      get copyWith => __$$ShoppingCartViewModelImplCopyWithImpl<
          _$ShoppingCartViewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShoppingCartViewModelImplToJson(
      this,
    );
  }
}

abstract class _ShoppingCartViewModel implements ShoppingCartViewModel {
  const factory _ShoppingCartViewModel(
      {required final String id,
      required final List<MenuItemViewModel> items,
      final double? subtotal,
      final double? total,
      final int? itemCount}) = _$ShoppingCartViewModelImpl;

  factory _ShoppingCartViewModel.fromJson(Map<String, dynamic> json) =
      _$ShoppingCartViewModelImpl.fromJson;

  @override
  String get id;
  @override
  List<MenuItemViewModel> get items;
  @override
  double? get subtotal;
  @override
  double? get total;
  @override
  int? get itemCount;

  /// Create a copy of ShoppingCartViewModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShoppingCartViewModelImplCopyWith<_$ShoppingCartViewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
