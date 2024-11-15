import 'package:core/core.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_view_model.dart';
import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class ShoppingCartNotifier extends AsyncNotifier<ShoppingCartModel> {
  late final OrderRepositoryInterface orderRepository;
  late final User? user;
  ShoppingCart? currentCart;

  @override
  Future<ShoppingCartModel> build() async {
    final orderRepository = ref.read(orderRepositoryProvider);
    final user = await ref.read(userNotifierProvider.future);
    if (user.user == null) {
      final model = ShoppingCartModel(shoppingCarts: []);
      state = AsyncData(model);
      return model;
    }

    this.user = user.user;

    final cartResult = await orderRepository.queryShoppingCarts(
      filter: Input$ShoppingCartFilter(
        userId: Input$UUIDFilter(
          eq: user.user!.id,
        ),
        orderId: Input$UUIDFilter(
          eq: null,
        ),
      ),
    );

    return cartResult.fold(
      (l) {
        final model = ShoppingCartModel(shoppingCarts: []);
        state = AsyncData(model);
        return model;
      },
      (r) {
        currentCart = r.first;
        final model = ShoppingCartModel(
          shoppingCarts: r
              .map((cart) => ShoppingCartViewModel.fromFragment(cart))
              .toList(),
          currentCartId: currentCart?.id,
        );
        state = AsyncData(model);
        return model;
      },
    );
  }

  Future<void> addItem(CartItem item) async {
    final currentState = state.value!;
    final newCartId = const Uuid().v4();
    bool isNewCart = false;
    if (currentState.currentCartId == null) {
      final result = await orderRepository.createShoppingCart(
        input: Input$ShoppingCartInsertInput(
          id: newCartId,
          userId: user!.id,
        ),
      );

      if (result.isLeft()) {
        state = AsyncError(
            result
                .getLeft()
                .getOrElse(() => Failure.unprocessableEntity(
                    message: 'Failed creating cart!'))
                .error,
            StackTrace.current);
        return;
      } else {
        isNewCart = true;
      }
    }
    state = AsyncValue.data(currentState.copyWith(
      items: [...currentState.items, item],
      totalPrice: totalPrice,
      currentCartId: isNewCart ? newCartId : currentState.currentCartId,
    ));
  }

  Future<void> removeItem(String id) async {
    final currentState = state.value!;
    bool isLastItem = false;
    if (currentState.items.length == 1) {
      isLastItem = true;
      await orderRepository.deleteShoppingCart(id: id);
    }
    state = AsyncValue.data(currentState.copyWith(
      items: currentState.items.where((item) => item.id != id).toList(),
      totalPrice: totalPrice,
      currentCartId: isLastItem ? null : currentState.currentCartId,
    ));
  }

  Future<void> updateQuantity(String id, int quantity) async {
    final currentState = state.value!;
    state = AsyncValue.data(currentState.copyWith(
      items: currentState.items
          .map((item) =>
              item.id == id ? item.copyWith(quantity: quantity) : item)
          .toList(),
      totalPrice: totalPrice,
    ));
  }

  Future<void> calculateTotalPrice() async {
    final currentState = state.value!;
    state = AsyncValue.data(currentState.copyWith(
        totalPrice: currentState.items
            .fold(0.0, (sum, item) => sum + item.price * item.quantity)));
  }

  double get totalPrice =>
      state.value?.items
          .fold(0.0, (sum, item) => sum! + item.price * item.quantity) ??
      0.0;

  Future<void> clearCart() async {
    state = AsyncValue.data(ShoppingCartModel());
  }

  ShoppingCart? get cart => currentCart;
}

final shoppingCartProvider =
    AsyncNotifierProvider<ShoppingCartNotifier, ShoppingCartModel>(
        () => ShoppingCartNotifier());
