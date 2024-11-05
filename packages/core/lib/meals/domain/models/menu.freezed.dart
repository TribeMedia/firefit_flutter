// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MenuType _$MenuTypeFromJson(Map<String, dynamic> json) {
  return _MenuType.fromJson(json);
}

/// @nodoc
mixin _$MenuType {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;
  String? get coverUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get schema => throw _privateConstructorUsedError;

  /// Serializes this MenuType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuTypeCopyWith<MenuType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuTypeCopyWith<$Res> {
  factory $MenuTypeCopyWith(MenuType value, $Res Function(MenuType) then) =
      _$MenuTypeCopyWithImpl<$Res, MenuType>;
  @useResult
  $Res call(
      {String id,
      String name,
      String key,
      String? description,
      DateTime createdAt,
      String? iconUrl,
      String? coverUrl,
      Map<String, dynamic>? schema});
}

/// @nodoc
class _$MenuTypeCopyWithImpl<$Res, $Val extends MenuType>
    implements $MenuTypeCopyWith<$Res> {
  _$MenuTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? key = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? iconUrl = freezed,
    Object? coverUrl = freezed,
    Object? schema = freezed,
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
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      schema: freezed == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuTypeImplCopyWith<$Res>
    implements $MenuTypeCopyWith<$Res> {
  factory _$$MenuTypeImplCopyWith(
          _$MenuTypeImpl value, $Res Function(_$MenuTypeImpl) then) =
      __$$MenuTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String key,
      String? description,
      DateTime createdAt,
      String? iconUrl,
      String? coverUrl,
      Map<String, dynamic>? schema});
}

/// @nodoc
class __$$MenuTypeImplCopyWithImpl<$Res>
    extends _$MenuTypeCopyWithImpl<$Res, _$MenuTypeImpl>
    implements _$$MenuTypeImplCopyWith<$Res> {
  __$$MenuTypeImplCopyWithImpl(
      _$MenuTypeImpl _value, $Res Function(_$MenuTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? key = null,
    Object? description = freezed,
    Object? createdAt = null,
    Object? iconUrl = freezed,
    Object? coverUrl = freezed,
    Object? schema = freezed,
  }) {
    return _then(_$MenuTypeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      coverUrl: freezed == coverUrl
          ? _value.coverUrl
          : coverUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      schema: freezed == schema
          ? _value._schema
          : schema // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuTypeImpl implements _MenuType {
  const _$MenuTypeImpl(
      {required this.id,
      required this.name,
      required this.key,
      this.description,
      required this.createdAt,
      this.iconUrl,
      this.coverUrl,
      final Map<String, dynamic>? schema})
      : _schema = schema;

  factory _$MenuTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuTypeImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String key;
  @override
  final String? description;
  @override
  final DateTime createdAt;
  @override
  final String? iconUrl;
  @override
  final String? coverUrl;
  final Map<String, dynamic>? _schema;
  @override
  Map<String, dynamic>? get schema {
    final value = _schema;
    if (value == null) return null;
    if (_schema is EqualUnmodifiableMapView) return _schema;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'MenuType(id: $id, name: $name, key: $key, description: $description, createdAt: $createdAt, iconUrl: $iconUrl, coverUrl: $coverUrl, schema: $schema)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.coverUrl, coverUrl) ||
                other.coverUrl == coverUrl) &&
            const DeepCollectionEquality().equals(other._schema, _schema));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      key,
      description,
      createdAt,
      iconUrl,
      coverUrl,
      const DeepCollectionEquality().hash(_schema));

  /// Create a copy of MenuType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuTypeImplCopyWith<_$MenuTypeImpl> get copyWith =>
      __$$MenuTypeImplCopyWithImpl<_$MenuTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuTypeImplToJson(
      this,
    );
  }
}

abstract class _MenuType implements MenuType {
  const factory _MenuType(
      {required final String id,
      required final String name,
      required final String key,
      final String? description,
      required final DateTime createdAt,
      final String? iconUrl,
      final String? coverUrl,
      final Map<String, dynamic>? schema}) = _$MenuTypeImpl;

  factory _MenuType.fromJson(Map<String, dynamic> json) =
      _$MenuTypeImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get key;
  @override
  String? get description;
  @override
  DateTime get createdAt;
  @override
  String? get iconUrl;
  @override
  String? get coverUrl;
  @override
  Map<String, dynamic>? get schema;

  /// Create a copy of MenuType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuTypeImplCopyWith<_$MenuTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return _Menu.fromJson(json);
}

/// @nodoc
mixin _$Menu {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<MenuItem> get items => throw _privateConstructorUsedError;
  MenuType get type => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  String? get coverImageUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  /// Serializes this Menu to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuCopyWith<Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res, Menu>;
  @useResult
  $Res call(
      {String id,
      String name,
      String providerId,
      String? description,
      List<MenuItem> items,
      MenuType type,
      String? imageUrl,
      DateTime? lastUpdated,
      String? coverImageUrl,
      Map<String, dynamic>? data});

  $MenuTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$MenuCopyWithImpl<$Res, $Val extends Menu>
    implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? providerId = null,
    Object? description = freezed,
    Object? items = null,
    Object? type = null,
    Object? imageUrl = freezed,
    Object? lastUpdated = freezed,
    Object? coverImageUrl = freezed,
    Object? data = freezed,
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
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuType,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuTypeCopyWith<$Res> get type {
    return $MenuTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MenuImplCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$$MenuImplCopyWith(
          _$MenuImpl value, $Res Function(_$MenuImpl) then) =
      __$$MenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String providerId,
      String? description,
      List<MenuItem> items,
      MenuType type,
      String? imageUrl,
      DateTime? lastUpdated,
      String? coverImageUrl,
      Map<String, dynamic>? data});

  @override
  $MenuTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$$MenuImplCopyWithImpl<$Res>
    extends _$MenuCopyWithImpl<$Res, _$MenuImpl>
    implements _$$MenuImplCopyWith<$Res> {
  __$$MenuImplCopyWithImpl(_$MenuImpl _value, $Res Function(_$MenuImpl) _then)
      : super(_value, _then);

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? providerId = null,
    Object? description = freezed,
    Object? items = null,
    Object? type = null,
    Object? imageUrl = freezed,
    Object? lastUpdated = freezed,
    Object? coverImageUrl = freezed,
    Object? data = freezed,
  }) {
    return _then(_$MenuImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<MenuItem>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MenuType,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      coverImageUrl: freezed == coverImageUrl
          ? _value.coverImageUrl
          : coverImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuImpl implements _Menu {
  const _$MenuImpl(
      {required this.id,
      required this.name,
      required this.providerId,
      this.description,
      required final List<MenuItem> items,
      required this.type,
      this.imageUrl,
      this.lastUpdated,
      this.coverImageUrl,
      final Map<String, dynamic>? data})
      : _items = items,
        _data = data;

  factory _$MenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String providerId;
  @override
  final String? description;
  final List<MenuItem> _items;
  @override
  List<MenuItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final MenuType type;
  @override
  final String? imageUrl;
  @override
  final DateTime? lastUpdated;
  @override
  final String? coverImageUrl;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Menu(id: $id, name: $name, providerId: $providerId, description: $description, items: $items, type: $type, imageUrl: $imageUrl, lastUpdated: $lastUpdated, coverImageUrl: $coverImageUrl, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.coverImageUrl, coverImageUrl) ||
                other.coverImageUrl == coverImageUrl) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      providerId,
      description,
      const DeepCollectionEquality().hash(_items),
      type,
      imageUrl,
      lastUpdated,
      coverImageUrl,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuImplCopyWith<_$MenuImpl> get copyWith =>
      __$$MenuImplCopyWithImpl<_$MenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuImplToJson(
      this,
    );
  }
}

abstract class _Menu implements Menu {
  const factory _Menu(
      {required final String id,
      required final String name,
      required final String providerId,
      final String? description,
      required final List<MenuItem> items,
      required final MenuType type,
      final String? imageUrl,
      final DateTime? lastUpdated,
      final String? coverImageUrl,
      final Map<String, dynamic>? data}) = _$MenuImpl;

  factory _Menu.fromJson(Map<String, dynamic> json) = _$MenuImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get providerId;
  @override
  String? get description;
  @override
  List<MenuItem> get items;
  @override
  MenuType get type;
  @override
  String? get imageUrl;
  @override
  DateTime? get lastUpdated;
  @override
  String? get coverImageUrl;
  @override
  Map<String, dynamic>? get data;

  /// Create a copy of Menu
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuImplCopyWith<_$MenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) {
  return _MenuItem.fromJson(json);
}

/// @nodoc
mixin _$MenuItem {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  bool get isAvailable => throw _privateConstructorUsedError;
  bool? get isPopular => throw _privateConstructorUsedError;
  List<String>? get categories => throw _privateConstructorUsedError;

  /// Serializes this MenuItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuItemCopyWith<MenuItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuItemCopyWith<$Res> {
  factory $MenuItemCopyWith(MenuItem value, $Res Function(MenuItem) then) =
      _$MenuItemCopyWithImpl<$Res, MenuItem>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      Map<String, dynamic>? data,
      double? price,
      bool isAvailable,
      bool? isPopular,
      List<String>? categories});
}

/// @nodoc
class _$MenuItemCopyWithImpl<$Res, $Val extends MenuItem>
    implements $MenuItemCopyWith<$Res> {
  _$MenuItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? data = freezed,
    Object? price = freezed,
    Object? isAvailable = null,
    Object? isPopular = freezed,
    Object? categories = freezed,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopular: freezed == isPopular
          ? _value.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuItemImplCopyWith<$Res>
    implements $MenuItemCopyWith<$Res> {
  factory _$$MenuItemImplCopyWith(
          _$MenuItemImpl value, $Res Function(_$MenuItemImpl) then) =
      __$$MenuItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String imageUrl,
      Map<String, dynamic>? data,
      double? price,
      bool isAvailable,
      bool? isPopular,
      List<String>? categories});
}

/// @nodoc
class __$$MenuItemImplCopyWithImpl<$Res>
    extends _$MenuItemCopyWithImpl<$Res, _$MenuItemImpl>
    implements _$$MenuItemImplCopyWith<$Res> {
  __$$MenuItemImplCopyWithImpl(
      _$MenuItemImpl _value, $Res Function(_$MenuItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imageUrl = null,
    Object? data = freezed,
    Object? price = freezed,
    Object? isAvailable = null,
    Object? isPopular = freezed,
    Object? categories = freezed,
  }) {
    return _then(_$MenuItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      isAvailable: null == isAvailable
          ? _value.isAvailable
          : isAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      isPopular: freezed == isPopular
          ? _value.isPopular
          : isPopular // ignore: cast_nullable_to_non_nullable
              as bool?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuItemImpl implements _MenuItem {
  const _$MenuItemImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.imageUrl,
      final Map<String, dynamic>? data,
      this.price,
      required this.isAvailable,
      this.isPopular,
      final List<String>? categories})
      : _data = data,
        _categories = categories;

  factory _$MenuItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuItemImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String imageUrl;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final double? price;
  @override
  final bool isAvailable;
  @override
  final bool? isPopular;
  final List<String>? _categories;
  @override
  List<String>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MenuItem(id: $id, name: $name, description: $description, imageUrl: $imageUrl, data: $data, price: $price, isAvailable: $isAvailable, isPopular: $isPopular, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isAvailable, isAvailable) ||
                other.isAvailable == isAvailable) &&
            (identical(other.isPopular, isPopular) ||
                other.isPopular == isPopular) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      imageUrl,
      const DeepCollectionEquality().hash(_data),
      price,
      isAvailable,
      isPopular,
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      __$$MenuItemImplCopyWithImpl<_$MenuItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuItemImplToJson(
      this,
    );
  }
}

abstract class _MenuItem implements MenuItem {
  const factory _MenuItem(
      {required final String id,
      required final String name,
      required final String description,
      required final String imageUrl,
      final Map<String, dynamic>? data,
      final double? price,
      required final bool isAvailable,
      final bool? isPopular,
      final List<String>? categories}) = _$MenuItemImpl;

  factory _MenuItem.fromJson(Map<String, dynamic> json) =
      _$MenuItemImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  Map<String, dynamic>? get data;
  @override
  double? get price;
  @override
  bool get isAvailable;
  @override
  bool? get isPopular;
  @override
  List<String>? get categories;

  /// Create a copy of MenuItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuItemImplCopyWith<_$MenuItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
