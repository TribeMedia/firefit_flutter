import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_cart_model.freezed.dart';

@freezed
abstract class ShoppingCartModel with _$ShoppingCartModel {
  const factory ShoppingCartModel({
    @Default([]) List<Fragment$ShoppingCart> shoppingCarts,
    String? currentCartId,
    Fragment$ShoppingCart? currentCart,
    String? error,
    @Default(false) bool isLoading,
  }) = _ShoppingCartModel;

  const ShoppingCartModel._();

  // Computed properties
  List<Fragment$ShoppingCartItem> get items =>
      currentCart?.shoppingCartItemsCollection?.edges
          .map((e) => e.node)
          .toList() ??
      [];

  bool get isEmpty => items.isEmpty;

  int get itemCount => items.length;
}
