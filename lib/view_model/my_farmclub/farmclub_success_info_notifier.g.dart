// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_success_info_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$farmclubSuccessModelHash() =>
    r'1b5c91a6c59b856114a340365ab9665d40772300';

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

/// See also [farmclubSuccessModel].
@ProviderFor(farmclubSuccessModel)
const farmclubSuccessModelProvider = FarmclubSuccessModelFamily();

/// See also [farmclubSuccessModel].
class FarmclubSuccessModelFamily
    extends Family<AsyncValue<FarmclubSuccessModel>> {
  /// See also [farmclubSuccessModel].
  const FarmclubSuccessModelFamily();

  /// See also [farmclubSuccessModel].
  FarmclubSuccessModelProvider call(
    int? farmClubId,
  ) {
    return FarmclubSuccessModelProvider(
      farmClubId,
    );
  }

  @override
  FarmclubSuccessModelProvider getProviderOverride(
    covariant FarmclubSuccessModelProvider provider,
  ) {
    return call(
      provider.farmClubId,
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
  String? get name => r'farmclubSuccessModelProvider';
}

/// See also [farmclubSuccessModel].
class FarmclubSuccessModelProvider
    extends AutoDisposeFutureProvider<FarmclubSuccessModel> {
  /// See also [farmclubSuccessModel].
  FarmclubSuccessModelProvider(
    int? farmClubId,
  ) : this._internal(
          (ref) => farmclubSuccessModel(
            ref as FarmclubSuccessModelRef,
            farmClubId,
          ),
          from: farmclubSuccessModelProvider,
          name: r'farmclubSuccessModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$farmclubSuccessModelHash,
          dependencies: FarmclubSuccessModelFamily._dependencies,
          allTransitiveDependencies:
              FarmclubSuccessModelFamily._allTransitiveDependencies,
          farmClubId: farmClubId,
        );

  FarmclubSuccessModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.farmClubId,
  }) : super.internal();

  final int? farmClubId;

  @override
  Override overrideWith(
    FutureOr<FarmclubSuccessModel> Function(FarmclubSuccessModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FarmclubSuccessModelProvider._internal(
        (ref) => create(ref as FarmclubSuccessModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        farmClubId: farmClubId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<FarmclubSuccessModel> createElement() {
    return _FarmclubSuccessModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FarmclubSuccessModelProvider &&
        other.farmClubId == farmClubId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, farmClubId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FarmclubSuccessModelRef
    on AutoDisposeFutureProviderRef<FarmclubSuccessModel> {
  /// The parameter `farmClubId` of this provider.
  int? get farmClubId;
}

class _FarmclubSuccessModelProviderElement
    extends AutoDisposeFutureProviderElement<FarmclubSuccessModel>
    with FarmclubSuccessModelRef {
  _FarmclubSuccessModelProviderElement(super.provider);

  @override
  int? get farmClubId => (origin as FarmclubSuccessModelProvider).farmClubId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
