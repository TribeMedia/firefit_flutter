import 'package:core/commerce/graphql/orders.graphql.dart';
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
  late final AuthUser? user;
  ShoppingCart? currentCart;

  @override
  Future<ShoppingCartModel> build() async {
    try {
      orderRepository = ref.read(orderRepositoryProvider);
      final userResult = await ref.read(userNotifierProvider.future);
      if (userResult.user == null) {
        final model = ShoppingCartModel(shoppingCarts: []);
        state = AsyncData(model);
        return model;
      }

      user = userResult.user;

      final cartResult = await orderRepository.queryShoppingCarts(
        filter: Input$ShoppingCartsFilter(
          userId: Input$UUIDFilter(eq: user!.user.id),
          orderId: Input$UUIDFilter($is: Enum$FilterIs.NULL),
        ),
      );

      return cartResult.fold(
        (l) {
          final model = ShoppingCartModel(shoppingCarts: []);
          state = AsyncData(model);
          return model;
        },
        (r) {
          if (r.isNotEmpty) {
            currentCart = r.first;
            final model = ShoppingCartModel(
              shoppingCarts:
                  r
                      .map((cart) => ShoppingCartViewModel.fromFragment(cart))
                      .toList(),
              currentCartId: currentCart?.id,
              items: [],
            );
            state = AsyncData(model);
            return model;
          }
          return ShoppingCartModel(shoppingCarts: []);
        },
      );
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      return ShoppingCartModel(shoppingCarts: []);
    }
  }

  Future<void> addItem(CartItem item) async {
    try {
      final currentState = state.value!;
      final newCartId = const Uuid().v4();
      bool isNewCart = false;

      if (currentState.currentCartId == null) {
        state = const AsyncLoading();
        final result = await orderRepository.createShoppingCart(
          input: Input$ShoppingCartsInsertInput(
            id: newCartId,
            userId: user!.user.id,
          ),
        );

        if (result.isLeft()) {
          final error = result.getLeft().getOrElse(
            () => Failure.unprocessableEntity(message: 'Failed creating cart!'),
          );
          state = AsyncError(error.error, StackTrace.current);
          return;
        }
        isNewCart = true;
      }

      // Add item to database
      state = const AsyncLoading();
      final itemResult = await orderRepository.createShoppingCartMenuItem(
        input: Input$ShoppingCartItemsInsertInput(
          id: const Uuid().v4(),
          shoppingCartId: isNewCart ? newCartId : currentState.currentCartId!,
          productId: item.id,
          quantity: item.quantity,
          unitPrice: item.price,
        ),
      );

      if (itemResult.isLeft()) {
        final error = itemResult.getLeft().getOrElse(
          () => Failure.unprocessableEntity(
            message: 'Failed adding item to cart!',
          ),
        );
        state = AsyncError(error.error, StackTrace.current);
        return;
      }

      // Update the state with the new item
      // For now, we'll just use the existing items
      state = AsyncData(
        ShoppingCartModel(
          shoppingCarts: currentState.shoppingCarts,
          currentCartId: isNewCart ? newCartId : currentState.currentCartId,
          items: currentState.items,
        ),
      );
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }

  Future<void> removeItem(String id) async {
    try {
      final currentState = state.value!;
      bool isLastItem = false;

      // Remove item from database
      final result = await orderRepository.deleteShoppingCartMenuItem(id: id);

      if (result.isLeft()) {
        state = AsyncError(
          result
              .getLeft()
              .getOrElse(
                () => Failure.unprocessableEntity(
                  message: 'Failed removing item from cart!',
                ),
              )
              .error,
          StackTrace.current,
        );
        return;
      }

      if (currentState.items.length == 1) {
        isLastItem = true;
        await orderRepository.deleteShoppingCart(
          id: currentState.currentCartId!,
        );
      }

      // Update local state
      state = AsyncValue.data(
        currentState.copyWith(
          items: currentState.items.where((item) => item.id != id).toList(),
          totalPrice: totalPrice,
          currentCartId: isLastItem ? null : currentState.currentCartId,
        ),
      );
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }

  Future<void> updateQuantity(String id, int quantity) async {
    final currentState = state.value!;
    state = AsyncValue.data(
      currentState.copyWith(
        items:
            currentState.items
                .map(
                  (item) =>
                      item.id == id ? item.copyWith(quantity: quantity) : item,
                )
                .toList(),
        totalPrice: totalPrice,
      ),
    );
  }

  Future<void> calculateTotalPrice() async {
    final currentState = state.value!;
    state = AsyncValue.data(
      currentState.copyWith(
        totalPrice: currentState.items.fold(
          0.0,
          (sum, item) => sum + item.unitPrice * item.quantity,
        ),
      ),
    );
  }

  double get totalPrice =>
      state.value?.items.fold(
        0.0,
        (sum, item) => sum! + item.unitPrice * item.quantity,
      ) ??
      0.0;

  Future<void> clearCart() async {
    state = AsyncValue.data(ShoppingCartModel());
  }

  ShoppingCart? get cart => currentCart;
}

final shoppingCartProvider =
    AsyncNotifierProvider<ShoppingCartNotifier, ShoppingCartModel>(
      () => ShoppingCartNotifier(),
    );
