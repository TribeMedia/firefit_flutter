// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuTypeImpl _$$MenuTypeImplFromJson(Map<String, dynamic> json) =>
    _$MenuTypeImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      key: json['key'] as String,
      description: json['description'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      iconUrl: json['iconUrl'] as String?,
      coverUrl: json['coverUrl'] as String?,
      schema: json['schema'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MenuTypeImplToJson(_$MenuTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'key': instance.key,
      'description': instance.description,
      'createdAt': instance.createdAt.toIso8601String(),
      'iconUrl': instance.iconUrl,
      'coverUrl': instance.coverUrl,
      'schema': instance.schema,
    };

_$MenuImpl _$$MenuImplFromJson(Map<String, dynamic> json) => _$MenuImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      providerId: json['providerId'] as String,
      description: json['description'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: MenuType.fromJson(json['type'] as Map<String, dynamic>),
      imageUrl: json['imageUrl'] as String?,
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      coverImageUrl: json['coverImageUrl'] as String?,
      data: json['data'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MenuImplToJson(_$MenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'providerId': instance.providerId,
      'description': instance.description,
      'items': instance.items,
      'type': instance.type,
      'imageUrl': instance.imageUrl,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'coverImageUrl': instance.coverImageUrl,
      'data': instance.data,
    };

_$MenuItemImpl _$$MenuItemImplFromJson(Map<String, dynamic> json) =>
    _$MenuItemImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      imageUrl: json['imageUrl'] as String,
      data: json['data'] as Map<String, dynamic>?,
      price: (json['price'] as num?)?.toDouble(),
      isAvailable: json['isAvailable'] as bool,
      isPopular: json['isPopular'] as bool?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MenuItemImplToJson(_$MenuItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'data': instance.data,
      'price': instance.price,
      'isAvailable': instance.isAvailable,
      'isPopular': instance.isPopular,
      'categories': instance.categories,
    };
