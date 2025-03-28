// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'shopping_cart_view_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuItemViewModel _$MenuItemViewModelFromJson(Map<String, dynamic> json) =>
    _MenuItemViewModel(
      id: json['id'] as String,
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$MenuItemViewModelToJson(_MenuItemViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
    };

_ShoppingCartViewModel _$ShoppingCartViewModelFromJson(
        Map<String, dynamic> json) =>
    _ShoppingCartViewModel(
      id: json['id'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => MenuItemViewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      shoppingCartItems: (json['shoppingCartItems'] as List<dynamic>)
          .map((e) =>
              Fragment$ShoppingCartItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: (json['subtotal'] as num?)?.toDouble(),
      total: (json['total'] as num?)?.toDouble(),
      itemCount: (json['itemCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ShoppingCartViewModelToJson(
        _ShoppingCartViewModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'shoppingCartItems':
          instance.shoppingCartItems.map((e) => e.toJson()).toList(),
      'subtotal': instance.subtotal,
      'total': instance.total,
      'itemCount': instance.itemCount,
    };
