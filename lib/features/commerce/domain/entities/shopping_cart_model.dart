import 'package:core/commerce/graphql/orders.graphql.dart'; // Import the GraphQL generated file directly
import 'package:firefit/features/commerce/domain/entities/shopping_cart_view_model.dart'; // Ensure ShoppingCartViewModel is imported
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_cart_model.freezed.dart';

@freezed
abstract class ShoppingCartModel with _$ShoppingCartModel {
  const factory ShoppingCartModel({
    @Default([])
    List<Fragment$ShoppingCartItem>
        items, // Use Fragment$ShoppingCartItem directly
    @Default(0.0) double totalPrice,
    @Default([]) List<ShoppingCartViewModel> shoppingCarts,
    String? currentCartId,
  }) = _ShoppingCartModel;
}
