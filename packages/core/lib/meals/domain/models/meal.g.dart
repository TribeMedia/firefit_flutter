// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MealImpl _$$MealImplFromJson(Map<String, dynamic> json) => _$MealImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      data: json['data'] as Map<String, dynamic>?,
      eatenAt: json['eatenAt'] == null
          ? null
          : DateTime.parse(json['eatenAt'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$MealImplToJson(_$MealImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'items': instance.items,
      'imageUrl': instance.imageUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'data': instance.data,
      'eatenAt': instance.eatenAt?.toIso8601String(),
      'notes': instance.notes,
    };
