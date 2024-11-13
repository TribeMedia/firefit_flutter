import 'package:firefit/features/commerce/domain/entities/cart_item.dart'; // Ensure CartItem is imported
import 'package:firefit/features/commerce/domain/entities/shopping_cart_view_model.dart'; // Ensure ShoppingCartViewModel is imported
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_cart_model.freezed.dart';
part 'shopping_cart_model.g.dart';

@freezed
class ShoppingCartModel with _$ShoppingCartModel {
  const factory ShoppingCartModel({
    @Default([]) List<CartItem> items,
    @Default(0.0) double totalPrice,
    @Default([]) List<ShoppingCartViewModel> shoppingCarts,
    String? currentCartId,
  }) = _ShoppingCartModel;

  factory ShoppingCartModel.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartModelFromJson(json);
}
