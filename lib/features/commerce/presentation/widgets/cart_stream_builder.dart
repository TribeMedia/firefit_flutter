import 'package:firefit/features/commerce/presentation/providers/cart_event_bus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A StreamBuilder widget that listens to cart events and rebuilds when the cart changes.
///
/// This provides a reactive way to update UI components when the cart
/// changes without having to manually refresh or watch the entire provider.
/// 
/// This implementation is decoupled from the ShoppingCartNotifier and only uses
/// the event data from the CartEventBus.
class CartStreamBuilder extends ConsumerWidget {
  /// Builder function that receives the cart event data and builds a widget
  final Widget Function(BuildContext context, CartEvent event) builder;
  
  /// Widget to show when loading
  final Widget? loadingWidget;
  
  /// Widget to show when there's an error
  final Widget Function(BuildContext context, Object error)? errorBuilder;

  const CartStreamBuilder({
    super.key,
    required this.builder,
    this.loadingWidget,
    this.errorBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the event bus
    final eventBus = ref.read(cartEventBusProvider);
    
    // Use StreamBuilder to listen to cart events
    return StreamBuilder<CartEvent>(
      // Listen to the event bus stream
      stream: eventBus.events,
      builder: (context, snapshot) {
        // If there's an error and we have an error builder, show it
        if (snapshot.hasError && errorBuilder != null) {
          return errorBuilder!(context, snapshot.error!);
        }
        
        // If we're still waiting for the first event and have a loading widget, show it
        if (!snapshot.hasData && loadingWidget != null) {
          return loadingWidget!;
        }
        
        // If we have data, call the builder with the event
        if (snapshot.hasData) {
          return builder(context, snapshot.data!);
        }
        
        // Default case - create an empty event with no items
        final emptyEvent = CartEvent.changed(itemCount: 0, hasItems: false);
        return builder(context, emptyEvent);
      },
    );
  }
}

/// Extension methods for common cart operations
extension CartStreamExtensions on WidgetRef {
  /// Watch for cart changes
  Stream<CartEvent> watchCartEvents() {
    return read(cartEventBusProvider).events;
  }
  
  /// Watch for specific cart event types
  Stream<CartEvent> watchCartEventType(CartEventType type) {
    return read(cartEventBusProvider).events
        .where((event) => event.type == type);
  }
  
  /// Get the current cart item count from the latest event
  /// Returns 0 if no events have been received yet
  int getCartItemCount(CartEvent? event) {
    return event?.itemCount ?? 0;
  }
  
  /// Check if the cart has items from the latest event
  /// Returns false if no events have been received yet
  bool hasCartItems(CartEvent? event) {
    return event?.hasItems ?? false;
  }
}
