// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: always_specify_types, public_member_api_docs

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$lightThemeHash() => r'e1b29934432d3e5df0bb79b761ff32cb7e0b23ba';

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

/// See also [lightTheme].
@ProviderFor(lightTheme)
const lightThemeProvider = LightThemeFamily();

/// See also [lightTheme].
class LightThemeFamily extends Family<LightThemeData> {
  /// See also [lightTheme].
  const LightThemeFamily();

  /// See also [lightTheme].
  LightThemeProvider call(
    ThemeData theme,
  ) {
    return LightThemeProvider(
      theme,
    );
  }

  @override
  LightThemeProvider getProviderOverride(
    covariant LightThemeProvider provider,
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
  String? get name => r'lightThemeProvider';
}

/// See also [lightTheme].
class LightThemeProvider extends AutoDisposeProvider<LightThemeData> {
  /// See also [lightTheme].
  LightThemeProvider(
    ThemeData theme,
  ) : this._internal(
          (ref) => lightTheme(
            ref as LightThemeRef,
            theme,
          ),
          from: lightThemeProvider,
          name: r'lightThemeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$lightThemeHash,
          dependencies: LightThemeFamily._dependencies,
          allTransitiveDependencies:
              LightThemeFamily._allTransitiveDependencies,
          theme: theme,
        );

  LightThemeProvider._internal(
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
    LightThemeData Function(LightThemeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: LightThemeProvider._internal(
        (ref) => create(ref as LightThemeRef),
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
    return _LightThemeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LightThemeProvider && other.theme == theme;
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
mixin LightThemeRef on AutoDisposeProviderRef<LightThemeData> {
  /// The parameter `theme` of this provider.
  ThemeData get theme;
}

class _LightThemeProviderElement
    extends AutoDisposeProviderElement<LightThemeData> with LightThemeRef {
  _LightThemeProviderElement(super.provider);

  @override
  ThemeData get theme => (origin as LightThemeProvider).theme;
}

String _$darkThemeHash() => r'd4602ec1300e305bfedf53144879237b07a37620';

/// See also [darkTheme].
@ProviderFor(darkTheme)
const darkThemeProvider = DarkThemeFamily();

/// See also [darkTheme].
class DarkThemeFamily extends Family<DarkThemeData> {
  /// See also [darkTheme].
  const DarkThemeFamily();

  /// See also [darkTheme].
  DarkThemeProvider call(
    ThemeData theme,
  ) {
    return DarkThemeProvider(
      theme,
    );
  }

  @override
  DarkThemeProvider getProviderOverride(
    covariant DarkThemeProvider provider,
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
  String? get name => r'darkThemeProvider';
}

/// See also [darkTheme].
class DarkThemeProvider extends AutoDisposeProvider<DarkThemeData> {
  /// See also [darkTheme].
  DarkThemeProvider(
    ThemeData theme,
  ) : this._internal(
          (ref) => darkTheme(
            ref as DarkThemeRef,
            theme,
          ),
          from: darkThemeProvider,
          name: r'darkThemeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$darkThemeHash,
          dependencies: DarkThemeFamily._dependencies,
          allTransitiveDependencies: DarkThemeFamily._allTransitiveDependencies,
          theme: theme,
        );

  DarkThemeProvider._internal(
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
    DarkThemeData Function(DarkThemeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DarkThemeProvider._internal(
        (ref) => create(ref as DarkThemeRef),
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
    return _DarkThemeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DarkThemeProvider && other.theme == theme;
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
mixin DarkThemeRef on AutoDisposeProviderRef<DarkThemeData> {
  /// The parameter `theme` of this provider.
  ThemeData get theme;
}

class _DarkThemeProviderElement
    extends AutoDisposeProviderElement<DarkThemeData> with DarkThemeRef {
  _DarkThemeProviderElement(super.provider);

  @override
  ThemeData get theme => (origin as DarkThemeProvider).theme;
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
