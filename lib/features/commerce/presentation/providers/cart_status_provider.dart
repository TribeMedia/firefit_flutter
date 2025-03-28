import 'package:firefit/features/common/presentation/providers/app_event_bus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A simple model that only contains the minimal cart status information
/// that most widgets need (exists, item count)
class CartStatus {
  /// Whether the cart has any items
  final bool hasItems;
  
  /// The number of items in the cart
  final int itemCount;
  
  /// The ID of the current cart (null if no cart exists)
  final String? cartId;
  
  const CartStatus({
    required this.hasItems,
    required this.itemCount,
    this.cartId,
  });
  
  /// Create an empty cart status
  factory CartStatus.empty() => const CartStatus(
    hasItems: false,
    itemCount: 0,
    cartId: null,
  );
}

/// A lightweight provider that only exposes the minimal cart status information
/// that most widgets need (exists, item count)
///
/// This provider is updated by the event bus when the cart changes, so it's
/// always in sync with the ShoppingCartNotifier but doesn't require widgets
/// to depend on the full AsyncNotifier.
final cartStatusProvider = StateProvider<CartStatus>((ref) {
  // Start with an empty cart status
  final status = CartStatus.empty();
  
  // Listen to cart events from the event bus
  final subscription = ref.read(eventBusProvider).stream
    .where((event) => event.source == 'cart')
    .listen((event) {
      // Update the state with the new cart status
      final hasItems = event.payload['hasItems'] as bool? ?? false;
      final itemCount = event.payload['itemCount'] as int? ?? 0;
      final cartId = event.payload['cartId'] as String?;
      
      ref.controller.state = CartStatus(
        hasItems: hasItems,
        itemCount: itemCount,
        cartId: cartId,
      );
    });
  
  // Clean up the subscription when the provider is disposed
  ref.onDispose(() {
    subscription.cancel();
  });
  
  return status;
});

/// Extension methods for working with the cart status
extension CartStatusExtensions on WidgetRef {
  /// Get the current cart status
  CartStatus get cartStatus => read(cartStatusProvider);
  
  /// Watch the cart status for changes
  CartStatus watchCartStatus() => watch(cartStatusProvider);
  
  /// Check if the cart has any items
  bool get hasCartItems => read(cartStatusProvider).hasItems;
  
  /// Get the number of items in the cart
  int get cartItemCount => read(cartStatusProvider).itemCount;
}
