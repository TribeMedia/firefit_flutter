// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$menuControllerHash() => r'0052364a52dcb2b6947b17a20157c5b25c5832a1';

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

abstract class _$MenuController extends BuildlessAsyncNotifier<MenuViewModel> {
  late final String providerId;

  FutureOr<MenuViewModel> build(
    String providerId,
  );
}

/// See also [MenuController].
@ProviderFor(MenuController)
const menuControllerProvider = MenuControllerFamily();

/// See also [MenuController].
class MenuControllerFamily extends Family<AsyncValue<MenuViewModel>> {
  /// See also [MenuController].
  const MenuControllerFamily();

  /// See also [MenuController].
  MenuControllerProvider call(
    String providerId,
  ) {
    return MenuControllerProvider(
      providerId,
    );
  }

  @override
  MenuControllerProvider getProviderOverride(
    covariant MenuControllerProvider provider,
  ) {
    return call(
      provider.providerId,
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
  String? get name => r'menuControllerProvider';
}

/// See also [MenuController].
class MenuControllerProvider
    extends AsyncNotifierProviderImpl<MenuController, MenuViewModel> {
  /// See also [MenuController].
  MenuControllerProvider(
    String providerId,
  ) : this._internal(
          () => MenuController()..providerId = providerId,
          from: menuControllerProvider,
          name: r'menuControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$menuControllerHash,
          dependencies: MenuControllerFamily._dependencies,
          allTransitiveDependencies:
              MenuControllerFamily._allTransitiveDependencies,
          providerId: providerId,
        );

  MenuControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.providerId,
  }) : super.internal();

  final String providerId;

  @override
  FutureOr<MenuViewModel> runNotifierBuild(
    covariant MenuController notifier,
  ) {
    return notifier.build(
      providerId,
    );
  }

  @override
  Override overrideWith(MenuController Function() create) {
    return ProviderOverride(
      origin: this,
      override: MenuControllerProvider._internal(
        () => create()..providerId = providerId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        providerId: providerId,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<MenuController, MenuViewModel> createElement() {
    return _MenuControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MenuControllerProvider && other.providerId == providerId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, providerId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MenuControllerRef on AsyncNotifierProviderRef<MenuViewModel> {
  /// The parameter `providerId` of this provider.
  String get providerId;
}

class _MenuControllerProviderElement
    extends AsyncNotifierProviderElement<MenuController, MenuViewModel>
    with MenuControllerRef {
  _MenuControllerProviderElement(super.provider);

  @override
  String get providerId => (origin as MenuControllerProvider).providerId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
