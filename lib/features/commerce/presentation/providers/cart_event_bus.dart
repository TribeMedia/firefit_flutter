import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

/// Enum defining the types of cart events
enum CartEventType {
  /// Cart item added
  itemAdded,
  
  /// Cart item removed
  itemRemoved,
  
  /// Cart item quantity updated
  quantityUpdated,
  
  /// Cart cleared
  cleared,
  
  /// Generic cart changed event
  changed,
}

/// Event class with type, metadata, and cart state information
class CartEvent {
  /// The type of cart event
  final CartEventType type;
  
  /// Metadata about the event (e.g., item ID, quantity)
  final Map<String, dynamic> metadata;
  
  /// Current cart item count after the event
  final int itemCount;
  
  /// Whether the cart has items after the event
  final bool hasItems;
  
  /// Current cart ID (may be null if cart is empty)
  final String? cartId;
  
  /// Create a new cart event with cart state information
  const CartEvent(
    this.type, {
    this.metadata = const {},
    required this.itemCount,
    required this.hasItems,
    this.cartId,
  });
  
  /// Create a generic "cart changed" event
  factory CartEvent.changed({
    required int itemCount,
    required bool hasItems,
    String? cartId,
  }) => CartEvent(
    CartEventType.changed,
    itemCount: itemCount,
    hasItems: hasItems,
    cartId: cartId,
  );
  
  /// Create an "item added" event
  factory CartEvent.itemAdded(
    String itemId, {
    required int itemCount,
    required bool hasItems,
    required String? cartId,
  }) => CartEvent(
    CartEventType.itemAdded,
    metadata: {'itemId': itemId},
    itemCount: itemCount,
    hasItems: hasItems,
    cartId: cartId,
  );
  
  /// Create an "item removed" event
  factory CartEvent.itemRemoved(
    String itemId, {
    required int itemCount,
    required bool hasItems,
    required String? cartId,
  }) => CartEvent(
    CartEventType.itemRemoved,
    metadata: {'itemId': itemId},
    itemCount: itemCount,
    hasItems: hasItems,
    cartId: cartId,
  );
  
  /// Create a "quantity updated" event
  factory CartEvent.quantityUpdated(
    String itemId,
    int quantity, {
    required int itemCount,
    required bool hasItems,
    required String? cartId,
  }) => CartEvent(
    CartEventType.quantityUpdated,
    metadata: {'itemId': itemId, 'quantity': quantity},
    itemCount: itemCount,
    hasItems: hasItems,
    cartId: cartId,
  );
  
  /// Create a "cart cleared" event
  factory CartEvent.cleared() => const CartEvent(
    CartEventType.cleared,
    itemCount: 0,
    hasItems: false,
  );
}

/// A lightweight event bus for cart events to prevent circular dependencies
/// 
/// This class acts as a central hub for cart-related events, completely
/// separate from the ShoppingCartNotifier to avoid circular dependencies.
/// It only passes minimal event data, not the entire cart model.
class CartEventBus {
  // PublishSubject for cart events
  final _eventSubject = PublishSubject<CartEvent>();
  
  // Expose stream for components to listen to
  Stream<CartEvent> get events => _eventSubject.stream;
  
  // Method to emit cart events using microtask to avoid race conditions
  void emit(CartEvent event) {
    // Use scheduleMicrotask to ensure the event is delivered even from modal dialogs
    scheduleMicrotask(() {
      if (!_eventSubject.isClosed) {
        _eventSubject.add(event);
      }
    });
  }
  
  // Helper methods for common events that include cart state
  void emitCartChanged({required int itemCount, required bool hasItems, String? cartId}) => 
      emit(CartEvent.changed(itemCount: itemCount, hasItems: hasItems, cartId: cartId));
      
  void emitItemAdded(String itemId, {required int itemCount, required bool hasItems, required String? cartId}) => 
      emit(CartEvent.itemAdded(itemId, itemCount: itemCount, hasItems: hasItems, cartId: cartId));
      
  void emitItemRemoved(String itemId, {required int itemCount, required bool hasItems, required String? cartId}) => 
      emit(CartEvent.itemRemoved(itemId, itemCount: itemCount, hasItems: hasItems, cartId: cartId));
      
  void emitQuantityUpdated(String itemId, int quantity, {required int itemCount, required bool hasItems, required String? cartId}) => 
      emit(CartEvent.quantityUpdated(itemId, quantity, itemCount: itemCount, hasItems: hasItems, cartId: cartId));
      
  void emitCartCleared() => emit(CartEvent.cleared());
  
  // Clean up resources when disposed
  void dispose() {
    _eventSubject.close();
  }
}

/// Global provider for the cart event bus
/// This is completely separate from shoppingCartProvider to avoid circular dependencies
final cartEventBusProvider = Provider<CartEventBus>((ref) {
  final eventBus = CartEventBus();
  
  // Clean up when the provider is disposed
  ref.onDispose(() {
    eventBus.dispose();
  });
  
  return eventBus;
});
