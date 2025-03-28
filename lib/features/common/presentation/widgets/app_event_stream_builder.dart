import 'package:firefit/features/common/presentation/providers/app_event_bus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// A StreamBuilder widget that listens to app events and rebuilds when events occur.
///
/// This provides a reactive way to update UI components when events occur
/// without having to manually refresh or watch the entire provider.
class AppEventStreamBuilder extends ConsumerWidget {
  /// Builder function that receives the event data and builds a widget
  final Widget Function(BuildContext context, AppEvent? event) builder;
  
  /// Filter for events by source
  final String? source;
  
  /// Filter for events by type
  final String? type;
  
  /// Widget to show when loading
  final Widget? loadingWidget;
  
  /// Widget to show when there's an error
  final Widget Function(BuildContext context, Object error)? errorBuilder;

  const AppEventStreamBuilder({
    super.key,
    required this.builder,
    this.source,
    this.type,
    this.loadingWidget,
    this.errorBuilder,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the event bus
    final eventBus = ref.read(eventBusProvider);
    
    // Create a filtered stream based on source and type
    Stream<AppEvent> stream = eventBus.stream;
    if (source != null) {
      stream = stream.where((event) => event.source == source);
    }
    if (type != null) {
      stream = stream.where((event) => event.type == type);
    }
    
    // Use StreamBuilder to listen to events
    return StreamBuilder<AppEvent>(
      stream: stream,
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
          return builder(context, snapshot.data);
        }
        
        // Default case - call the builder with null event
        return builder(context, null);
      },
    );
  }
}

/// A convenience widget for building cart-related UI components
class CartEventStreamBuilder extends AppEventStreamBuilder {
  const CartEventStreamBuilder({
    super.key,
    required super.builder,
    super.type,
    super.loadingWidget,
    super.errorBuilder,
  }) : super(source: 'cart');
}

/// Extension methods for common event stream operations
extension AppEventStreamExtensions on WidgetRef {
  /// Watch for events of a specific source
  Stream<AppEvent> watchEventsOfSource(String source) {
    return read(eventBusProvider).stream.where((event) => event.source == source);
  }
  
  /// Watch for events of a specific type
  Stream<AppEvent> watchEventsOfType(String type) {
    return read(eventBusProvider).stream.where((event) => event.type == type);
  }
  
  /// Watch for events of a specific source and type
  Stream<AppEvent> watchEvents({String? source, String? type}) {
    Stream<AppEvent> stream = read(eventBusProvider).stream;
    if (source != null) {
      stream = stream.where((event) => event.source == source);
    }
    if (type != null) {
      stream = stream.where((event) => event.type == type);
    }
    return stream;
  }
  
  /// Get a payload value from an event
  T? getPayloadValue<T>(AppEvent? event, String key) {
    if (event == null) return null;
    final value = event.payload[key];
    if (value is T) return value;
    return null;
  }
  
  /// Get the cart item count from an event
  int getCartItemCount(AppEvent? event) {
    return getPayloadValue<int>(event, 'itemCount') ?? 0;
  }
  
  /// Check if the cart has items from an event
  bool hasCartItems(AppEvent? event) {
    return getPayloadValue<bool>(event, 'hasItems') ?? false;
  }
  
  /// Get the cart ID from an event
  String? getCartId(AppEvent? event) {
    return getPayloadValue<String>(event, 'cartId');
  }
}
