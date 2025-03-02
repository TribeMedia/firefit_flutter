// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderControllerHash() => r'dadb9bdea430f6bcc46ad55d6f47ac2ce0b7563c';

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
  late final AuthUser user;

  FutureOr<OrderViewModel> build(
    AuthUser user,
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
    AuthUser user,
  ) {
    return OrderControllerProvider(
      user,
    );
  }

  @override
  OrderControllerProvider getProviderOverride(
    covariant OrderControllerProvider provider,
  ) {
    return call(
      provider.user,
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
    AuthUser user,
  ) : this._internal(
          () => OrderController()..user = user,
          from: orderControllerProvider,
          name: r'orderControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$orderControllerHash,
          dependencies: OrderControllerFamily._dependencies,
          allTransitiveDependencies:
              OrderControllerFamily._allTransitiveDependencies,
          user: user,
        );

  OrderControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.user,
  }) : super.internal();

  final AuthUser user;

  @override
  FutureOr<OrderViewModel> runNotifierBuild(
    covariant OrderController notifier,
  ) {
    return notifier.build(
      user,
    );
  }

  @override
  Override overrideWith(OrderController Function() create) {
    return ProviderOverride(
      origin: this,
      override: OrderControllerProvider._internal(
        () => create()..user = user,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        user: user,
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
    return other is OrderControllerProvider && other.user == user;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, user.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin OrderControllerRef on AsyncNotifierProviderRef<OrderViewModel> {
  /// The parameter `user` of this provider.
  AuthUser get user;
}

class _OrderControllerProviderElement
    extends AsyncNotifierProviderElement<OrderController, OrderViewModel>
    with OrderControllerRef {
  _OrderControllerProviderElement(super.provider);

  @override
  AuthUser get user => (origin as OrderControllerProvider).user;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
