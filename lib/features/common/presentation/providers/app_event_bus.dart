import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rxdart/rxdart.dart';

/// A generic app event that can be used for cross-provider communication
class AppEvent {
  /// The type of event
  final String type;

  /// The source of the event (e.g., 'cart', 'auth', 'notification')
  final String source;

  /// Payload data associated with the event
  final Map<String, dynamic> payload;

  /// Create a new app event
  const AppEvent({
    required this.type,
    required this.source,
    this.payload = const {},
  });

  /// Create a cart event
  factory AppEvent.cart(String type,
          {Map<String, dynamic> payload = const {}}) =>
      AppEvent(type: type, source: 'cart', payload: payload);

  /// Create an auth event
  factory AppEvent.auth(String type,
          {Map<String, dynamic> payload = const {}}) =>
      AppEvent(type: type, source: 'auth', payload: payload);

  /// Create a notification event
  factory AppEvent.notification(String type,
          {Map<String, dynamic> payload = const {}}) =>
      AppEvent(type: type, source: 'notification', payload: payload);

  @override
  String toString() =>
      'AppEvent(type: $type, source: $source, payload: $payload)';
}

/// A global event bus for app-wide events
///
/// This is a singleton provider that can be used throughout the app
/// to communicate between different parts of the app without creating
/// direct dependencies.
final eventBusProvider = Provider<BehaviorSubject<AppEvent>>((ref) {
  // Create a BehaviorSubject that will replay the last event to new subscribers
  final eventBus = BehaviorSubject<AppEvent>();

  // Clean up when the provider is disposed
  ref.onDispose(() {
    eventBus.close();
  });

  return eventBus;
});

/// Common cart event types
class CartEventTypes {
  static const String itemAdded = 'cart.item_added';
  static const String itemRemoved = 'cart.item_removed';
  static const String quantityUpdated = 'cart.quantity_updated';
  static const String cleared = 'cart.cleared';
  static const String changed = 'cart.changed';
}

/// Common auth event types
class AuthEventTypes {
  static const String loggedIn = 'auth.logged_in';
  static const String loggedOut = 'auth.logged_out';
  static const String profileUpdated = 'auth.profile_updated';
}

/// Common notification event types
class NotificationEventTypes {
  static const String received = 'notification.received';
  static const String read = 'notification.read';
  static const String cleared = 'notification.cleared';
}

/// Extension methods for working with the event bus
extension EventBusExtensions on Ref {
  /// Get the event bus
  BehaviorSubject<AppEvent> get eventBus => read(eventBusProvider);

  /// Add an event to the event bus
  void addEvent(AppEvent event) {
    read(eventBusProvider).add(event);
  }

  /// Add a cart event to the event bus
  void addCartEvent(String type, {Map<String, dynamic> payload = const {}}) {
    addEvent(AppEvent.cart(type, payload: payload));
  }

  /// Add an auth event to the event bus
  void addAuthEvent(String type, {Map<String, dynamic> payload = const {}}) {
    addEvent(AppEvent.auth(type, payload: payload));
  }

  /// Add a notification event to the event bus
  void addNotificationEvent(String type,
      {Map<String, dynamic> payload = const {}}) {
    addEvent(AppEvent.notification(type, payload: payload));
  }
}

/// Extension methods for working with the event bus in widgets
extension EventBusWidgetExtensions on WidgetRef {
  /// Get the event bus
  BehaviorSubject<AppEvent> get eventBus => read(eventBusProvider);

  /// Add an event to the event bus
  void addEvent(AppEvent event) {
    read(eventBusProvider).add(event);
  }

  /// Add a cart event to the event bus
  void addCartEvent(String type, {Map<String, dynamic> payload = const {}}) {
    addEvent(AppEvent.cart(type, payload: payload));
  }

  /// Add an auth event to the event bus
  void addAuthEvent(String type, {Map<String, dynamic> payload = const {}}) {
    addEvent(AppEvent.auth(type, payload: payload));
  }

  /// Add a notification event to the event bus
  void addNotificationEvent(String type,
      {Map<String, dynamic> payload = const {}}) {
    addEvent(AppEvent.notification(type, payload: payload));
  }

  /// Get a stream of events filtered by source
  Stream<AppEvent> eventsOfSource(String source) {
    return read(eventBusProvider)
        .stream
        .where((event) => event.source == source);
  }

  /// Get a stream of events filtered by type
  Stream<AppEvent> eventsOfType(String type) {
    return read(eventBusProvider).stream.where((event) => event.type == type);
  }

  /// Get a stream of cart events
  Stream<AppEvent> get cartEvents => eventsOfSource('cart');

  /// Get a stream of auth events
  Stream<AppEvent> get authEvents => eventsOfSource('auth');

  /// Get a stream of notification events
  Stream<AppEvent> get notificationEvents => eventsOfSource('notification');
}
