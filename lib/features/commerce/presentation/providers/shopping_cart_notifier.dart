import 'package:core/core.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_view_model.dart';
import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ShoppingCartNotifier extends AsyncNotifier<ShoppingCartModel> {
  late final OrderRepositoryInterface orderRepository;
  @override
  Future<ShoppingCartModel> build() async {
    final orderRepository = ref.read(orderRepositoryProvider);
    final user = await ref.read(userNotifierProvider.future);
    if (user.user == null) {
      final model = ShoppingCartModel(shoppingCarts: []);
      state = AsyncData(model);
      return model;
    }

    final cartResult = await orderRepository.queryShoppingCarts(
      filter: Input$ShoppingCartFilter(
        userId: Input$UUIDFilter(eq: user.user!.id),
      ),
    );

    return cartResult.fold(
      (l) {
        final model = ShoppingCartModel(shoppingCarts: []);
        state = AsyncData(model);
        return model;
      },
      (r) {
        final model = ShoppingCartModel(
          shoppingCarts: r.map((cart) => ShoppingCartViewModel.fromFragment(cart)).toList(),
        );
        state = AsyncData(model);
        return model;
      },
    );
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

final shoppingCartProvider =
    AsyncNotifierProvider<ShoppingCartNotifier, ShoppingCartModel>(
        () => ShoppingCartNotifier());
