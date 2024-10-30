import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShoppingCartNotifier extends AsyncNotifier<ShoppingCartModel> {
  @override
  Future<ShoppingCartModel> build() async {
    return ShoppingCartModel();
  }

  Future<void> addItem(CartItem item) async {
    final currentState = state.value!;
    state = AsyncValue.data(
        currentState.copyWith(items: [...currentState.items, item]));
  }

  Future<void> removeItem(String id) async {
    final currentState = state.value!;
    state = AsyncValue.data(currentState.copyWith(
        items: currentState.items.where((item) => item.id != id).toList()));
  }

  Future<void> updateQuantity(String id, int quantity) async {
    final currentState = state.value!;
    state = AsyncValue.data(currentState.copyWith(
        items: currentState.items
            .map((item) =>
                item.id == id ? item.copyWith(quantity: quantity) : item)
            .toList()));
  }

  Future<void> calculateTotalPrice() async {
    final currentState = state.value!;
    state = AsyncValue.data(currentState.copyWith(
        totalPrice: currentState.items
            .fold(0.0, (sum, item) => sum + item.price * item.quantity)));
  }

  Future<void> clearCart() async {
    state = AsyncValue.data(ShoppingCartModel());
  }
}
