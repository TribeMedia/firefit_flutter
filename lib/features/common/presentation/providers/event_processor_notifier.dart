import 'package:firefit/features/common/presentation/providers/app_event_bus.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A generic event processor that listens to the event bus and processes events
///
/// This class is responsible for listening to the event bus and processing events.
/// It maintains a list of the most recent events for each source, which can be
/// used by UI components to display information about the events.
class EventProcessorNotifier extends AsyncNotifier<Map<String, AppEvent>> {
  @override
  Future<Map<String, AppEvent>> build() async {
    // Initialize with an empty map
    final initialState = <String, AppEvent>{};

    // Get the event bus
    final eventBus = ref.read(eventBusProvider);

    // Subscribe to the event bus stream
    final subscription = eventBus.stream.listen(_handleEvent);

    // Clean up the subscription when the provider is disposed
    ref.onDispose(() {
      subscription.cancel();
    });

    return initialState;
  }

  /// Handle an event from the event bus
  void _handleEvent(AppEvent event) {
    // Update the state with the new event
    state = AsyncData({
      ...state.valueOrNull ?? {},
      event.source: event,
    });
  }

  /// Get the most recent event for a specific source
  AppEvent? getEventForSource(String source) {
    return state.valueOrNull?[source];
  }

  /// Get the payload value for a specific source and key
  T? getPayloadValue<T>(String source, String key) {
    final event = getEventForSource(source);
    if (event == null) return null;

    final value = event.payload[key];
    if (value is T) return value;
    return null;
  }

  /// Get the cart item count from the most recent cart event
  int get cartItemCount => getPayloadValue<int>('cart', 'itemCount') ?? 0;

  /// Check if the cart has items from the most recent cart event
  bool get cartHasItems => getPayloadValue<bool>('cart', 'hasItems') ?? false;

  /// Get the cart ID from the most recent cart event
  String? get cartId => getPayloadValue<String>('cart', 'cartId');
}

/// Provider for the event processor
final eventProcessorProvider =
    AsyncNotifierProvider<EventProcessorNotifier, Map<String, AppEvent>>(
  () => EventProcessorNotifier(),
);

/// Extension methods for working with the event processor
extension EventProcessorExtensions on WidgetRef {
  /// Get the event processor
  EventProcessorNotifier get eventProcessor =>
      read(eventProcessorProvider.notifier);

  /// Get the most recent event for a specific source
  AppEvent? getEventForSource(String source) {
    return eventProcessor.getEventForSource(source);
  }

  /// Get the payload value for a specific source and key
  T? getPayloadValue<T>(String source, String key) {
    return eventProcessor.getPayloadValue<T>(source, key);
  }

  /// Get the cart item count from the most recent cart event
  int get cartItemCount => eventProcessor.cartItemCount;

  /// Check if the cart has items from the most recent cart event
  bool get cartHasItems => eventProcessor.cartHasItems;

  /// Get the cart ID from the most recent cart event
  String? get cartId => eventProcessor.cartId;
}
