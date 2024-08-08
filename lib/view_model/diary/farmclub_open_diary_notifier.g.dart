// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_open_diary_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$farmclubOpenDiaryModelHash() =>
    r'0fa04868ac80444f43eff2aa6ab9941c99047a44';

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

/// See also [farmclubOpenDiaryModel].
@ProviderFor(farmclubOpenDiaryModel)
const farmclubOpenDiaryModelProvider = FarmclubOpenDiaryModelFamily();

/// See also [farmclubOpenDiaryModel].
class FarmclubOpenDiaryModelFamily
    extends Family<AsyncValue<List<FarmclubOpenDiaryModel>>> {
  /// See also [farmclubOpenDiaryModel].
  const FarmclubOpenDiaryModelFamily();

  /// See also [farmclubOpenDiaryModel].
  FarmclubOpenDiaryModelProvider call(
    int? farmclubId,
  ) {
    return FarmclubOpenDiaryModelProvider(
      farmclubId,
    );
  }

  @override
  FarmclubOpenDiaryModelProvider getProviderOverride(
    covariant FarmclubOpenDiaryModelProvider provider,
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
  String? get name => r'farmclubOpenDiaryModelProvider';
}

/// See also [farmclubOpenDiaryModel].
class FarmclubOpenDiaryModelProvider
    extends AutoDisposeFutureProvider<List<FarmclubOpenDiaryModel>> {
  /// See also [farmclubOpenDiaryModel].
  FarmclubOpenDiaryModelProvider(
    int? farmclubId,
  ) : this._internal(
          (ref) => farmclubOpenDiaryModel(
            ref as FarmclubOpenDiaryModelRef,
            farmclubId,
          ),
          from: farmclubOpenDiaryModelProvider,
          name: r'farmclubOpenDiaryModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$farmclubOpenDiaryModelHash,
          dependencies: FarmclubOpenDiaryModelFamily._dependencies,
          allTransitiveDependencies:
              FarmclubOpenDiaryModelFamily._allTransitiveDependencies,
          farmclubId: farmclubId,
        );

  FarmclubOpenDiaryModelProvider._internal(
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
    FutureOr<List<FarmclubOpenDiaryModel>> Function(
            FarmclubOpenDiaryModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FarmclubOpenDiaryModelProvider._internal(
        (ref) => create(ref as FarmclubOpenDiaryModelRef),
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
  AutoDisposeFutureProviderElement<List<FarmclubOpenDiaryModel>>
      createElement() {
    return _FarmclubOpenDiaryModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FarmclubOpenDiaryModelProvider &&
        other.farmclubId == farmclubId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, farmclubId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FarmclubOpenDiaryModelRef
    on AutoDisposeFutureProviderRef<List<FarmclubOpenDiaryModel>> {
  /// The parameter `farmclubId` of this provider.
  int? get farmclubId;
}

class _FarmclubOpenDiaryModelProviderElement
    extends AutoDisposeFutureProviderElement<List<FarmclubOpenDiaryModel>>
    with FarmclubOpenDiaryModelRef {
  _FarmclubOpenDiaryModelProviderElement(super.provider);

  @override
  int? get farmclubId => (origin as FarmclubOpenDiaryModelProvider).farmclubId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
