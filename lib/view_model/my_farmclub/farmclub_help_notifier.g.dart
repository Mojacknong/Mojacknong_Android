// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_help_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$farmclubHelpModelHash() => r'b4c534e4f8b82d714e42b7ef6ee34ccbbfbfeb19';

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

/// See also [farmclubHelpModel].
@ProviderFor(farmclubHelpModel)
const farmclubHelpModelProvider = FarmclubHelpModelFamily();

/// See also [farmclubHelpModel].
class FarmclubHelpModelFamily extends Family<AsyncValue<FarmclubHelpModel>> {
  /// See also [farmclubHelpModel].
  const FarmclubHelpModelFamily();

  /// See also [farmclubHelpModel].
  FarmclubHelpModelProvider call(
    int? farmclubId,
  ) {
    return FarmclubHelpModelProvider(
      farmclubId,
    );
  }

  @override
  FarmclubHelpModelProvider getProviderOverride(
    covariant FarmclubHelpModelProvider provider,
  ) {
    return call(
      provider.farmclubId,
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
  String? get name => r'farmclubHelpModelProvider';
}

/// See also [farmclubHelpModel].
class FarmclubHelpModelProvider
    extends AutoDisposeFutureProvider<FarmclubHelpModel> {
  /// See also [farmclubHelpModel].
  FarmclubHelpModelProvider(
    int? farmclubId,
  ) : this._internal(
          (ref) => farmclubHelpModel(
            ref as FarmclubHelpModelRef,
            farmclubId,
          ),
          from: farmclubHelpModelProvider,
          name: r'farmclubHelpModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$farmclubHelpModelHash,
          dependencies: FarmclubHelpModelFamily._dependencies,
          allTransitiveDependencies:
              FarmclubHelpModelFamily._allTransitiveDependencies,
          farmclubId: farmclubId,
        );

  FarmclubHelpModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.farmclubId,
  }) : super.internal();

  final int? farmclubId;

  @override
  Override overrideWith(
    FutureOr<FarmclubHelpModel> Function(FarmclubHelpModelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FarmclubHelpModelProvider._internal(
        (ref) => create(ref as FarmclubHelpModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        farmclubId: farmclubId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<FarmclubHelpModel> createElement() {
    return _FarmclubHelpModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FarmclubHelpModelProvider && other.farmclubId == farmclubId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, farmclubId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FarmclubHelpModelRef on AutoDisposeFutureProviderRef<FarmclubHelpModel> {
  /// The parameter `farmclubId` of this provider.
  int? get farmclubId;
}

class _FarmclubHelpModelProviderElement
    extends AutoDisposeFutureProviderElement<FarmclubHelpModel>
    with FarmclubHelpModelRef {
  _FarmclubHelpModelProviderElement(super.provider);

  @override
  int? get farmclubId => (origin as FarmclubHelpModelProvider).farmclubId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
