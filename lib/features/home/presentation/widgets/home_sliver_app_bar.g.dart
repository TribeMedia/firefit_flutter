// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'home_sliver_app_bar.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeAppBarHash() => r'16a30e7ba5fda471289037582bdb640e4d409489';

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

abstract class _$HomeAppBar
    extends BuildlessAutoDisposeAsyncNotifier<HomeAppBarState> {
  late final HomeAppBarInput input;

  FutureOr<HomeAppBarState> build(
    HomeAppBarInput input,
  );
}

/// See also [HomeAppBar].
@ProviderFor(HomeAppBar)
const homeAppBarProvider = HomeAppBarFamily();

/// See also [HomeAppBar].
class HomeAppBarFamily extends Family<AsyncValue<HomeAppBarState>> {
  /// See also [HomeAppBar].
  const HomeAppBarFamily();

  /// See also [HomeAppBar].
  HomeAppBarProvider call(
    HomeAppBarInput input,
  ) {
    return HomeAppBarProvider(
      input,
    );
  }

  @override
  HomeAppBarProvider getProviderOverride(
    covariant HomeAppBarProvider provider,
  ) {
    return call(
      provider.input,
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
  String? get name => r'homeAppBarProvider';
}

/// See also [HomeAppBar].
class HomeAppBarProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HomeAppBar, HomeAppBarState> {
  /// See also [HomeAppBar].
  HomeAppBarProvider(
    HomeAppBarInput input,
  ) : this._internal(
          () => HomeAppBar()..input = input,
          from: homeAppBarProvider,
          name: r'homeAppBarProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeAppBarHash,
          dependencies: HomeAppBarFamily._dependencies,
          allTransitiveDependencies:
              HomeAppBarFamily._allTransitiveDependencies,
          input: input,
        );

  HomeAppBarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.input,
  }) : super.internal();

  final HomeAppBarInput input;

  @override
  FutureOr<HomeAppBarState> runNotifierBuild(
    covariant HomeAppBar notifier,
  ) {
    return notifier.build(
      input,
    );
  }

  @override
  Override overrideWith(HomeAppBar Function() create) {
    return ProviderOverride(
      origin: this,
      override: HomeAppBarProvider._internal(
        () => create()..input = input,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        input: input,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HomeAppBar, HomeAppBarState>
      createElement() {
    return _HomeAppBarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HomeAppBarProvider && other.input == input;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, input.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HomeAppBarRef on AutoDisposeAsyncNotifierProviderRef<HomeAppBarState> {
  /// The parameter `input` of this provider.
  HomeAppBarInput get input;
}

class _HomeAppBarProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HomeAppBar, HomeAppBarState>
    with HomeAppBarRef {
  _HomeAppBarProviderElement(super.provider);

  @override
  HomeAppBarInput get input => (origin as HomeAppBarProvider).input;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
