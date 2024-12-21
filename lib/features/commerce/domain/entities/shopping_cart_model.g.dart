// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'shopping_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoppingCartModelImpl _$$ShoppingCartModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ShoppingCartModelImpl(
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => CartItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPrice: (json['totalPrice'] as num?)?.toDouble() ?? 0.0,
      shoppingCarts: (json['shoppingCarts'] as List<dynamic>?)
              ?.map((e) =>
                  ShoppingCartViewModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      currentCartId: json['currentCartId'] as String?,
    );

Map<String, dynamic> _$$ShoppingCartModelImplToJson(
        _$ShoppingCartModelImpl instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'totalPrice': instance.totalPrice,
      'shoppingCarts': instance.shoppingCarts.map((e) => e.toJson()).toList(),
      'currentCartId': instance.currentCartId,
    };
