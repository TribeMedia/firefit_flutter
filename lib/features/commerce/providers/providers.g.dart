// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderControllerHash() => r'2307615479ab2fe0e966a2a9b2a8f1358fc9b4a9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$OrderController
    extends BuildlessAsyncNotifier<OrderViewModel> {
  late final String userId;

  FutureOr<OrderViewModel> build(
    String userId,
  );
}

/// See also [OrderController].
@ProviderFor(OrderController)
const orderControllerProvider = OrderControllerFamily();

/// See also [OrderController].
class OrderControllerFamily extends Family<AsyncValue<OrderViewModel>> {
  /// See also [OrderController].
  const OrderControllerFamily();

  /// See also [OrderController].
  OrderControllerProvider call(
    String userId,
  ) {
    return OrderControllerProvider(
      userId,
    );
  }

  @override
  OrderControllerProvider getProviderOverride(
    covariant OrderControllerProvider provider,
  ) {
    return call(
      provider.userId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'orderControllerProvider';
}

/// See also [OrderController].
class OrderControllerProvider
    extends AsyncNotifierProviderImpl<OrderController, OrderViewModel> {
  /// See also [OrderController].
  OrderControllerProvider(
    String userId,
  ) : this._internal(
          () => OrderController()..userId = userId,
          from: orderControllerProvider,
          name: r'orderControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$orderControllerHash,
          dependencies: OrderControllerFamily._dependencies,
          allTransitiveDependencies:
              OrderControllerFamily._allTransitiveDependencies,
          userId: userId,
        );

  OrderControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  FutureOr<OrderViewModel> runNotifierBuild(
    covariant OrderController notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(OrderController Function() create) {
    return ProviderOverride(
      origin: this,
      override: OrderControllerProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<OrderController, OrderViewModel>
      createElement() {
    return _OrderControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is OrderControllerProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OrderControllerRef on AsyncNotifierProviderRef<OrderViewModel> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _OrderControllerProviderElement
    extends AsyncNotifierProviderElement<OrderController, OrderViewModel>
    with OrderControllerRef {
  _OrderControllerProviderElement(super.provider);

  @override
  String get userId => (origin as OrderControllerProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
