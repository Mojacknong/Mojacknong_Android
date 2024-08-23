// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_help_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$farmclubHelpNotifierHash() =>
    r'b52fe335de895d348e14c20548e271e7a05ed2dc';

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

abstract class _$FarmclubHelpNotifier
    extends BuildlessAutoDisposeAsyncNotifier<FarmclubHelpModel> {
  late final int? farmclubId;

  FutureOr<FarmclubHelpModel> build(
    int? farmclubId,
  );
}

/// See also [FarmclubHelpNotifier].
@ProviderFor(FarmclubHelpNotifier)
const farmclubHelpNotifierProvider = FarmclubHelpNotifierFamily();

/// See also [FarmclubHelpNotifier].
class FarmclubHelpNotifierFamily extends Family<AsyncValue<FarmclubHelpModel>> {
  /// See also [FarmclubHelpNotifier].
  const FarmclubHelpNotifierFamily();

  /// See also [FarmclubHelpNotifier].
  FarmclubHelpNotifierProvider call(
    int? farmclubId,
  ) {
    return FarmclubHelpNotifierProvider(
      farmclubId,
    );
  }

  @override
  FarmclubHelpNotifierProvider getProviderOverride(
    covariant FarmclubHelpNotifierProvider provider,
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
  String? get name => r'farmclubHelpNotifierProvider';
}

/// See also [FarmclubHelpNotifier].
class FarmclubHelpNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    FarmclubHelpNotifier, FarmclubHelpModel> {
  /// See also [FarmclubHelpNotifier].
  FarmclubHelpNotifierProvider(
    int? farmclubId,
  ) : this._internal(
          () => FarmclubHelpNotifier()..farmclubId = farmclubId,
          from: farmclubHelpNotifierProvider,
          name: r'farmclubHelpNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$farmclubHelpNotifierHash,
          dependencies: FarmclubHelpNotifierFamily._dependencies,
          allTransitiveDependencies:
              FarmclubHelpNotifierFamily._allTransitiveDependencies,
          farmclubId: farmclubId,
        );

  FarmclubHelpNotifierProvider._internal(
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
  FutureOr<FarmclubHelpModel> runNotifierBuild(
    covariant FarmclubHelpNotifier notifier,
  ) {
    return notifier.build(
      farmclubId,
    );
  }

  @override
  Override overrideWith(FarmclubHelpNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: FarmclubHelpNotifierProvider._internal(
        () => create()..farmclubId = farmclubId,
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
  AutoDisposeAsyncNotifierProviderElement<FarmclubHelpNotifier,
      FarmclubHelpModel> createElement() {
    return _FarmclubHelpNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FarmclubHelpNotifierProvider &&
        other.farmclubId == farmclubId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, farmclubId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FarmclubHelpNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<FarmclubHelpModel> {
  /// The parameter `farmclubId` of this provider.
  int? get farmclubId;
}

class _FarmclubHelpNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<FarmclubHelpNotifier,
        FarmclubHelpModel> with FarmclubHelpNotifierRef {
  _FarmclubHelpNotifierProviderElement(super.provider);

  @override
  int? get farmclubId => (origin as FarmclubHelpNotifierProvider).farmclubId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
