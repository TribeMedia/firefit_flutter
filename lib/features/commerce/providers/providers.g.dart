// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$orderControllerHash() => r'c3229d1243205417b6bd562527262e9d6efb4039';

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

String _$checkoutControllerHash() =>
    r'bbfd8a7194c2293f08d77c2556ec2d60dd34b1a3';

abstract class _$CheckoutController
    extends BuildlessAsyncNotifier<CheckoutState> {
  late final String userId;

  FutureOr<CheckoutState> build(
    String userId,
  );
}

/// See also [CheckoutController].
@ProviderFor(CheckoutController)
const checkoutControllerProvider = CheckoutControllerFamily();

/// See also [CheckoutController].
class CheckoutControllerFamily extends Family<AsyncValue<CheckoutState>> {
  /// See also [CheckoutController].
  const CheckoutControllerFamily();

  /// See also [CheckoutController].
  CheckoutControllerProvider call(
    String userId,
  ) {
    return CheckoutControllerProvider(
      userId,
    );
  }

  @override
  CheckoutControllerProvider getProviderOverride(
    covariant CheckoutControllerProvider provider,
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
  String? get name => r'checkoutControllerProvider';
}

/// See also [CheckoutController].
class CheckoutControllerProvider
    extends AsyncNotifierProviderImpl<CheckoutController, CheckoutState> {
  /// See also [CheckoutController].
  CheckoutControllerProvider(
    String userId,
  ) : this._internal(
          () => CheckoutController()..userId = userId,
          from: checkoutControllerProvider,
          name: r'checkoutControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$checkoutControllerHash,
          dependencies: CheckoutControllerFamily._dependencies,
          allTransitiveDependencies:
              CheckoutControllerFamily._allTransitiveDependencies,
          userId: userId,
        );

  CheckoutControllerProvider._internal(
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
  FutureOr<CheckoutState> runNotifierBuild(
    covariant CheckoutController notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(CheckoutController Function() create) {
    return ProviderOverride(
      origin: this,
      override: CheckoutControllerProvider._internal(
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
  AsyncNotifierProviderElement<CheckoutController, CheckoutState>
      createElement() {
    return _CheckoutControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CheckoutControllerProvider && other.userId == userId;
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
mixin CheckoutControllerRef on AsyncNotifierProviderRef<CheckoutState> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _CheckoutControllerProviderElement
    extends AsyncNotifierProviderElement<CheckoutController, CheckoutState>
    with CheckoutControllerRef {
  _CheckoutControllerProviderElement(super.provider);

  @override
  String get userId => (origin as CheckoutControllerProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
