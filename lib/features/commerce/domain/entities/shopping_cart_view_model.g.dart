// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'shopping_cart_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MenuItemViewModelImpl _$$MenuItemViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MenuItemViewModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$$MenuItemViewModelImplToJson(
        _$MenuItemViewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
    };

_$ShoppingCartViewModelImpl _$$ShoppingCartViewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShoppingCartViewModelImpl(
      id: json['id'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => MenuItemViewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: (json['subtotal'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      itemCount: (json['itemCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ShoppingCartViewModelImplToJson(
        _$ShoppingCartViewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'subtotal': instance.subtotal,
      'total': instance.total,
      'itemCount': instance.itemCount,
    };
