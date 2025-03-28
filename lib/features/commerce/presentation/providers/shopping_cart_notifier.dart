import 'package:core/commerce/graphql/orders.graphql.dart';
import 'package:core/commerce/tax/domain/services/sales_tax_service_interface.dart';
import 'package:core/commerce/tax/infrastructure/services/sales_tax_service.dart';
import 'package:core/core.dart';
import 'package:firefit/config/providers.dart';
import 'package:firefit/env/env.dart';
import 'package:firefit/features/auth/providers/user_notifier.dart';
import 'package:firefit/features/commerce/domain/entities/cart_item.dart';
import 'package:firefit/features/commerce/domain/entities/shopping_cart_model.dart';
import 'package:firefit/features/commerce/presentation/providers/providers.dart';
import 'package:firefit/features/common/presentation/providers/app_event_bus.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:uuid/uuid.dart';

class ShoppingCartNotifier extends AsyncNotifier<ShoppingCartModel> {
  static const double kDefaultTaxRate = 0.0625; // 6.25% default tax rate

  // No need for a getter, we'll use the extension methods directly

  @override
  Future<ShoppingCartModel> build() async {
    try {
      final orderRepository = ref.read(orderRepositoryProvider);
      final userResult = await ref.read(userNotifierProvider.future);
      if (userResult.user == null) {
        // No user - return empty cart
        return _createEmptyModel();
      }

      final user = userResult.user;

      // Get all active carts for the user
      final cartResult = await orderRepository.queryShoppingCarts(
        filter: Input$ShoppingCartsFilter(
          userId: Input$UUIDFilter(eq: user!.user.id),
          orderId: Input$UUIDFilter($is: Enum$FilterIs.NULL),
        ),
      );

      return cartResult.fold(
        // Error case - return empty cart
        (l) => _createEmptyModel(),
        (carts) {
          if (carts.isEmpty) {
            // No carts - return empty model
            return _createEmptyModel();
          }

          // Check if the first cart has any items
          final latestCart = carts.first;
          final hasItems =
              latestCart.shoppingCartItemsCollection?.edges.isNotEmpty ?? false;

          if (!hasItems) {
            // Cart exists but is empty, clean up
            try {
              orderRepository.deleteShoppingCart(id: latestCart.id);
            } catch (_) {
              // Ignore errors during cleanup
            }
            return _createEmptyModel();
          }

          // Create model with the cart data
          final model = ShoppingCartModel(
            shoppingCarts: carts,
            currentCart: latestCart,
            currentCartId: latestCart.id,
          );

          state = AsyncData(model);
          return model;
        },
      );
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
      return _createEmptyModel();
    }
  }

  // Helper to create an empty cart model
  ShoppingCartModel _createEmptyModel() {
    final model = ShoppingCartModel(shoppingCarts: []);
    state = AsyncData(model);
    return model;
  }

  Future<void> addItem(CartItem item) async {
    try {
      final orderRepository = ref.read(orderRepositoryProvider);
      final userResult = await ref.read(userNotifierProvider.future);
      final user = userResult.user;
      final logger = ref.read(loggingProvider);

      logger.debug('Adding item to cart: ${item.id}');

      if (user == null) {
        state = AsyncError('User not authenticated', StackTrace.current);
        return;
      }

      // Loading state
      state = const AsyncLoading();

      // Get current state
      final currentState = state.valueOrNull ?? _createEmptyModel();
      String cartId;

      // Create a new cart if needed
      if (currentState.currentCartId == null) {
        // Generate a new cart ID
        cartId = const Uuid().v4();
        logger.debug('Creating new cart with ID: $cartId');

        // Create cart in database
        final cartResult = await orderRepository.createShoppingCart(
          input: Input$ShoppingCartsInsertInput(
            id: cartId,
            userId: user.user.id,
          ),
        );

        if (cartResult.isLeft()) {
          final error = cartResult.getLeft().getOrElse(
                () => Failure.unprocessableEntity(
                    message: 'Failed creating cart!'),
              );
          state = AsyncError(error.error, StackTrace.current);
          logger.error('Failed to create cart: ${error.error}');
          return;
        }

        logger.debug('Cart created successfully');
      } else {
        // Use existing cart
        cartId = currentState.currentCartId!;
        logger.debug('Using existing cart ID: $cartId');
      }

      // Add item to the cart
      final itemResult = await orderRepository.createShoppingCartMenuItem(
        input: Input$ShoppingCartItemsInsertInput(
          id: const Uuid().v4(),
          shoppingCartId: cartId,
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
        logger.error('Failed to add item to cart: ${error.error}');
        return;
      }

      logger.debug('Item added successfully, refreshing state from database');

      // Refresh cart data from database
      await _refreshCart(item.id);

      logger.debug('Shopping cart state refreshed');
    } catch (e, stackTrace) {
      ref.read(loggingProvider).error('Exception in addItem: $e');
      state = AsyncError(e, stackTrace);
      // Ensure we have an empty model in the error case
      state = AsyncData(_createEmptyModel());
      // Force UI to refresh
      _notifyCartChanged();
    }
  }

  Future<void> updateItemQuantity(String id, int quantity) async {
    // Set the state to loading to show a loading indicator in the UI
    state = const AsyncLoading();
    final logger = ref.read(loggingProvider);

    try {
      final orderRepository = ref.read(orderRepositoryProvider);
      final currentState = state.valueOrNull ?? _createEmptyModel();

      // Safety check - must have a cart
      if (currentState.currentCartId == null) {
        state = AsyncData(currentState);
        return;
      }

      // Find the current item quantity
      var currentItemQuantity = 0;
      for (final item in currentState.items) {
        if (item.id == id) {
          currentItemQuantity = item.quantity;
          break;
        }
      }

      final newItemQuantity = currentItemQuantity + quantity;

      // Prevent decreasing below 0
      if (currentItemQuantity <= 0 && quantity < 0) {
        state = AsyncData(currentState);
        return;
      }

      if (newItemQuantity > 0) {
        // Update item quantity
        final result = await orderRepository.updateShoppingCartItem(
          id: id,
          input: Input$ShoppingCartItemsUpdateInput(
            quantity: newItemQuantity,
          ),
        );

        // Handle the result
        return result.fold(
          (failure) {
            state = AsyncError(failure.error, StackTrace.current);
          },
          (_) async {
            logger.debug('Item quantity updated, refreshing cart state');
            await _refreshCart(id, quantity: newItemQuantity);
          },
        );
      } else {
        // Delete the item when quantity reaches 0
        final result = await orderRepository.deleteShoppingCartMenuItem(id: id);

        // Handle the result
        return result.fold(
          (failure) {
            state = AsyncError(failure.error, StackTrace.current);
          },
          (_) async {
            logger.debug('Item removed (quantity 0), refreshing cart state');
            await _refreshCart(id, removed: true);
          },
        );
      }
    } catch (e, stackTrace) {
      logger.error('Exception in updateItemQuantity: $e');
      state = AsyncError(e, stackTrace);
      // Ensure we have an empty model in the error case
      state = AsyncData(_createEmptyModel());
      // Force UI to refresh
      _notifyCartChanged();
    }
  }

  Future<void> removeItem(String id) async {
    try {
      final orderRepository = ref.read(orderRepositoryProvider);
      final currentState = state.valueOrNull ?? _createEmptyModel();
      final logger = ref.read(loggingProvider);

      // Safety check
      if (currentState.currentCartId == null) {
        return;
      }

      // Set state to loading
      state = const AsyncLoading();

      // Remove the item from database
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

      logger.debug('Item removed from cart, checking remaining items');

      // Calculate remaining items - we need to check by querying
      final cartResult = await orderRepository.queryShoppingCarts(
        filter: Input$ShoppingCartsFilter(
          id: Input$UUIDFilter(eq: currentState.currentCartId),
        ),
      );

      return cartResult.fold((failure) {
        logger
            .error('Error querying cart after item removal: ${failure.error}');
        // Error occurred, just reset to empty state to be safe
        state = AsyncData(_createEmptyModel());

        // Refresh cart state
        _notifyCartChanged();
        return;
      }, (carts) async {
        if (carts.isEmpty ||
            (carts.first.shoppingCartItemsCollection?.edges.isEmpty ?? true)) {
          logger.debug('Cart is now empty, cleaning up');
          // Cart is empty or deleted, clean up fully
          if (currentState.currentCartId != null) {
            // Delete the empty cart to be safe
            await orderRepository.deleteShoppingCart(
                id: currentState.currentCartId!);
          }

          // Reset to completely empty state
          final emptyModel = _createEmptyModel();
          state = AsyncData(emptyModel);
        } else {
          logger.debug('Cart still has items, updating state');
          // Still have items, rebuild state from latest data
          final model = ShoppingCartModel(
            shoppingCarts: carts,
            currentCart: carts.first,
            currentCartId: carts.first.id,
          );
          state = AsyncData(model);
        }

        // Refresh cart state
        logger.debug('Refreshing cart state after item removal');
        final updatedState = state.valueOrNull ?? _createEmptyModel();
        final itemCount = updatedState.items.length;
        final hasItems = itemCount > 0;
        final cartId = updatedState.currentCartId;

        ref
            .read(eventBusProvider)
            .add(AppEvent.cart(CartEventTypes.itemRemoved, payload: {
              'itemId': id,
              'itemCount': itemCount,
              'hasItems': hasItems,
              'cartId': cartId,
            }));
      });
    } catch (e) {
      final logger = ref.read(loggingProvider);
      logger.error('Exception in removeItem: $e');
      state = AsyncError(e, StackTrace.current);
      // If we hit an error, reset to empty state to be safe
      state = AsyncData(_createEmptyModel());

      // Refresh cart state
      _notifyCartChanged();
    }
  }

  Future<void> updateQuantity(String id, int quantity) async {
    final currentState = state.valueOrNull ?? _createEmptyModel();

    // Find current quantity
    int currentQty = 0;
    for (final item in currentState.items) {
      if (item.id == id) {
        currentQty = item.quantity;
        break;
      }
    }

    // Call updateItemQuantity with the quantity difference
    await updateItemQuantity(id, quantity - currentQty);
  }

  // Helper method to get the current quantity of an item
  int currentItemQuantity(String id) {
    final currentState = state.valueOrNull;
    if (currentState == null) return 0;

    for (final item in currentState.items) {
      if (item.id == id) {
        return item.quantity;
      }
    }
    return 0;
  }

  // CALCULATED PROPERTIES

  // Calculate the subtotal (price before tax)
  double get totalPrice {
    final currentState = state.valueOrNull;
    if (currentState == null) return 0.0;

    double total = 0.0;
    for (final item in currentState.items) {
      total += item.unitPrice * item.quantity;
    }
    return total;
  }

  // Calculate tax based on current rate and subtotal
  double get totalTax {
    // Use default tax calculation
    return totalPrice * kDefaultTaxRate;
  }

  // Calculate tax using the tax service (async)
  Future<double> calculateTaxAsync({String zipCode = '90210'}) async {
    try {
      final taxService = ref.read(salesTaxServiceProvider);
      final taxResult = await taxService.calculateTax(
        amount: totalPrice,
        zipCode: zipCode,
      );

      return taxResult.fold(
        (failure) => totalPrice * kDefaultTaxRate,
        (taxResponse) => totalPrice * taxResponse.totalRate,
      );
    } catch (e) {
      // Fallback to default tax calculation
      return totalPrice * kDefaultTaxRate;
    }
  }

  // Calculate the total including tax
  double get totalWithTax {
    return totalPrice + totalTax;
  }

  Future<void> clearCart() async {
    final orderRepository = ref.read(orderRepositoryProvider);
    final currentState = state.valueOrNull;
    final logger = ref.read(loggingProvider);

    if (currentState?.currentCartId != null) {
      try {
        logger.debug('Clearing cart: ${currentState!.currentCartId}');
        state = const AsyncLoading();
        // Delete the cart from the database
        await orderRepository.deleteShoppingCart(
            id: currentState.currentCartId!);

        // Reset to empty state
        state = AsyncData(_createEmptyModel());

        // Notify that cart was cleared
        logger.debug('Refreshing cart state after cart clear');
        ref
            .read(eventBusProvider)
            .add(AppEvent.cart(CartEventTypes.cleared, payload: {
              'itemCount': 0,
              'hasItems': false,
              'cartId': null,
            }));
      } catch (e, stackTrace) {
        logger.error('Exception in clearCart: $e');
        state = AsyncError(e, stackTrace);

        // Ensure we reset to a safe state
        state = AsyncData(_createEmptyModel());
        _notifyCartChanged();
      }
    } else {
      // If there's no current cart, just reset the state
      logger.debug('No cart to clear, resetting state');
      state = AsyncData(_createEmptyModel());

      // Refresh cart state
      _notifyCartChanged();
    }
  }

  // Helper method to refresh cart and notify listeners
  Future<void> _refreshCart(String itemId,
      {int? quantity, bool removed = false}) async {
    // Get current cart state for the event
    final currentState = state.valueOrNull ?? _createEmptyModel();
    final itemCount = currentState.items.length;
    final hasItems = itemCount > 0;
    final cartId = currentState.currentCartId;

    // Common payload for all cart events
    final payload = {
      'itemCount': itemCount,
      'hasItems': hasItems,
      'cartId': cartId,
      'itemId': itemId,
    };

    // Notify listeners through the event bus with state included in payload
    if (removed) {
      ref
          .read(eventBusProvider)
          .add(AppEvent.cart(CartEventTypes.itemRemoved, payload: payload));
    } else if (quantity != null) {
      ref
          .read(eventBusProvider)
          .add(AppEvent.cart(CartEventTypes.quantityUpdated, payload: {
            ...payload,
            'quantity': quantity,
          }));
    } else {
      ref
          .read(eventBusProvider)
          .add(AppEvent.cart(CartEventTypes.itemAdded, payload: payload));
    }

    // Also emit a generic cart changed event
    _notifyCartChanged();
  }

  // Helper method to notify that cart changed
  void _notifyCartChanged() {
    final currentState = state.valueOrNull ?? _createEmptyModel();
    final itemCount = currentState.items.length;
    final hasItems = itemCount > 0;
    final cartId = currentState.currentCartId;

    ref
        .read(eventBusProvider)
        .add(AppEvent.cart(CartEventTypes.changed, payload: {
          'itemCount': itemCount,
          'hasItems': hasItems,
          'cartId': cartId,
        }));
  }

  // For compatibility with existing code
  Fragment$ShoppingCart? get cart => state.valueOrNull?.currentCart;

  // Helper method to get the current cart
  Fragment$ShoppingCart? getCurrentCart() {
    final currentState = state.valueOrNull;
    return currentState?.currentCart;
  }
}

final shoppingCartProvider =
    AsyncNotifierProvider<ShoppingCartNotifier, ShoppingCartModel>(
  () => ShoppingCartNotifier(),
);

// Provider for tax service
final salesTaxServiceProvider = Provider<SalesTaxServiceInterface>((ref) {
  return SalesTaxService(
    talker: ref.read(loggingProvider),
    env: Environment(),
  );
});

// For backward compatibility with menu_item_detail_screen
extension ShoppingCartBackwardCompatibility on ShoppingCartNotifier {
  Future<void> calculateTotalPrice() async {
    // This method exists for backward compatibility
    // Just notify that cart changed
    _notifyCartChanged();
  }
}
