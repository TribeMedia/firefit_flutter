// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$stationControllerHash() => r'd90e9cfa967f849cfdffffa11b9859d24b6fcdfe';

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

abstract class _$StationController
    extends BuildlessAsyncNotifier<StationViewModel> {
  late final String userId;

  FutureOr<StationViewModel> build(
    String userId,
  );
}

/// See also [StationController].
@ProviderFor(StationController)
const stationControllerProvider = StationControllerFamily();

/// See also [StationController].
class StationControllerFamily extends Family<AsyncValue<StationViewModel>> {
  /// See also [StationController].
  const StationControllerFamily();

  /// See also [StationController].
  StationControllerProvider call(
    String userId,
  ) {
    return StationControllerProvider(
      userId,
    );
  }

  @override
  StationControllerProvider getProviderOverride(
    covariant StationControllerProvider provider,
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
  String? get name => r'stationControllerProvider';
}

/// See also [StationController].
class StationControllerProvider
    extends AsyncNotifierProviderImpl<StationController, StationViewModel> {
  /// See also [StationController].
  StationControllerProvider(
    String userId,
  ) : this._internal(
          () => StationController()..userId = userId,
          from: stationControllerProvider,
          name: r'stationControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$stationControllerHash,
          dependencies: StationControllerFamily._dependencies,
          allTransitiveDependencies:
              StationControllerFamily._allTransitiveDependencies,
          userId: userId,
        );

  StationControllerProvider._internal(
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
  FutureOr<StationViewModel> runNotifierBuild(
    covariant StationController notifier,
  ) {
    return notifier.build(
      userId,
    );
  }

  @override
  Override overrideWith(StationController Function() create) {
    return ProviderOverride(
      origin: this,
      override: StationControllerProvider._internal(
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
  AsyncNotifierProviderElement<StationController, StationViewModel>
      createElement() {
    return _StationControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StationControllerProvider && other.userId == userId;
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
mixin StationControllerRef on AsyncNotifierProviderRef<StationViewModel> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _StationControllerProviderElement
    extends AsyncNotifierProviderElement<StationController, StationViewModel>
    with StationControllerRef {
  _StationControllerProviderElement(super.provider);

  @override
  String get userId => (origin as StationControllerProvider).userId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
