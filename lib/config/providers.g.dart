// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lightThemeProviderHash() =>
    r'07643d83a08e357b0ac049195b6957172d2bcca1';

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

/// See also [lightThemeProvider].
@ProviderFor(lightThemeProvider)
const lightThemeProviderProvider = LightThemeProviderFamily();

/// See also [lightThemeProvider].
class LightThemeProviderFamily extends Family<LightThemeData> {
  /// See also [lightThemeProvider].
  const LightThemeProviderFamily();

  /// See also [lightThemeProvider].
  LightThemeProviderProvider call(
    ThemeData theme,
  ) {
    return LightThemeProviderProvider(
      theme,
    );
  }

  @override
  LightThemeProviderProvider getProviderOverride(
    covariant LightThemeProviderProvider provider,
  ) {
    return call(
      provider.theme,
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
  String? get name => r'lightThemeProviderProvider';
}

/// See also [lightThemeProvider].
class LightThemeProviderProvider extends AutoDisposeProvider<LightThemeData> {
  /// See also [lightThemeProvider].
  LightThemeProviderProvider(
    ThemeData theme,
  ) : this._internal(
          (ref) => lightThemeProvider(
            ref as LightThemeProviderRef,
            theme,
          ),
          from: lightThemeProviderProvider,
          name: r'lightThemeProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lightThemeProviderHash,
          dependencies: LightThemeProviderFamily._dependencies,
          allTransitiveDependencies:
              LightThemeProviderFamily._allTransitiveDependencies,
          theme: theme,
        );

  LightThemeProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.theme,
  }) : super.internal();

  final ThemeData theme;

  @override
  Override overrideWith(
    LightThemeData Function(LightThemeProviderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LightThemeProviderProvider._internal(
        (ref) => create(ref as LightThemeProviderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        theme: theme,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<LightThemeData> createElement() {
    return _LightThemeProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LightThemeProviderProvider && other.theme == theme;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, theme.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LightThemeProviderRef on AutoDisposeProviderRef<LightThemeData> {
  /// The parameter `theme` of this provider.
  ThemeData get theme;
}

class _LightThemeProviderProviderElement
    extends AutoDisposeProviderElement<LightThemeData>
    with LightThemeProviderRef {
  _LightThemeProviderProviderElement(super.provider);

  @override
  ThemeData get theme => (origin as LightThemeProviderProvider).theme;
}

String _$darkThemeProviderHash() => r'9c519ff71bee83eacd85de7a0f76fbcd35a3e587';

/// See also [darkThemeProvider].
@ProviderFor(darkThemeProvider)
const darkThemeProviderProvider = DarkThemeProviderFamily();

/// See also [darkThemeProvider].
class DarkThemeProviderFamily extends Family<DarkThemeData> {
  /// See also [darkThemeProvider].
  const DarkThemeProviderFamily();

  /// See also [darkThemeProvider].
  DarkThemeProviderProvider call(
    ThemeData theme,
  ) {
    return DarkThemeProviderProvider(
      theme,
    );
  }

  @override
  DarkThemeProviderProvider getProviderOverride(
    covariant DarkThemeProviderProvider provider,
  ) {
    return call(
      provider.theme,
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
  String? get name => r'darkThemeProviderProvider';
}

/// See also [darkThemeProvider].
class DarkThemeProviderProvider extends AutoDisposeProvider<DarkThemeData> {
  /// See also [darkThemeProvider].
  DarkThemeProviderProvider(
    ThemeData theme,
  ) : this._internal(
          (ref) => darkThemeProvider(
            ref as DarkThemeProviderRef,
            theme,
          ),
          from: darkThemeProviderProvider,
          name: r'darkThemeProviderProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$darkThemeProviderHash,
          dependencies: DarkThemeProviderFamily._dependencies,
          allTransitiveDependencies:
              DarkThemeProviderFamily._allTransitiveDependencies,
          theme: theme,
        );

  DarkThemeProviderProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.theme,
  }) : super.internal();

  final ThemeData theme;

  @override
  Override overrideWith(
    DarkThemeData Function(DarkThemeProviderRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DarkThemeProviderProvider._internal(
        (ref) => create(ref as DarkThemeProviderRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        theme: theme,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DarkThemeData> createElement() {
    return _DarkThemeProviderProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DarkThemeProviderProvider && other.theme == theme;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, theme.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DarkThemeProviderRef on AutoDisposeProviderRef<DarkThemeData> {
  /// The parameter `theme` of this provider.
  ThemeData get theme;
}

class _DarkThemeProviderProviderElement
    extends AutoDisposeProviderElement<DarkThemeData>
    with DarkThemeProviderRef {
  _DarkThemeProviderProviderElement(super.provider);

  @override
  ThemeData get theme => (origin as DarkThemeProviderProvider).theme;
}

String _$loggingHash() => r'1249cda802da9c99a31ed111f5621e0b1d22537e';

/// See also [logging].
@ProviderFor(logging)
final loggingProvider = AutoDisposeProvider<Talker>.internal(
  logging,
  name: r'loggingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loggingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LoggingRef = AutoDisposeProviderRef<Talker>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
