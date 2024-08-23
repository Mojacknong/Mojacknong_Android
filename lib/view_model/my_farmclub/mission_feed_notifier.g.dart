// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_feed_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$missionFeedHash() => r'e7b684b9ffdfaeb114c2c202a38450059ee4d088';

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

/// See also [missionFeed].
@ProviderFor(missionFeed)
const missionFeedProvider = MissionFeedFamily();

/// See also [missionFeed].
class MissionFeedFamily extends Family<AsyncValue<List<MissionFeed>>> {
  /// See also [missionFeed].
  const MissionFeedFamily();

  /// See also [missionFeed].
  MissionFeedProvider call(
    int? farmclubId,
  ) {
    return MissionFeedProvider(
      farmclubId,
    );
  }

  @override
  MissionFeedProvider getProviderOverride(
    covariant MissionFeedProvider provider,
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
  String? get name => r'missionFeedProvider';
}

/// See also [missionFeed].
class MissionFeedProvider extends AutoDisposeFutureProvider<List<MissionFeed>> {
  /// See also [missionFeed].
  MissionFeedProvider(
    int? farmclubId,
  ) : this._internal(
          (ref) => missionFeed(
            ref as MissionFeedRef,
            farmclubId,
          ),
          from: missionFeedProvider,
          name: r'missionFeedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$missionFeedHash,
          dependencies: MissionFeedFamily._dependencies,
          allTransitiveDependencies:
              MissionFeedFamily._allTransitiveDependencies,
          farmclubId: farmclubId,
        );

  MissionFeedProvider._internal(
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
    FutureOr<List<MissionFeed>> Function(MissionFeedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MissionFeedProvider._internal(
        (ref) => create(ref as MissionFeedRef),
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
  AutoDisposeFutureProviderElement<List<MissionFeed>> createElement() {
    return _MissionFeedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MissionFeedProvider && other.farmclubId == farmclubId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, farmclubId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MissionFeedRef on AutoDisposeFutureProviderRef<List<MissionFeed>> {
  /// The parameter `farmclubId` of this provider.
  int? get farmclubId;
}

class _MissionFeedProviderElement
    extends AutoDisposeFutureProviderElement<List<MissionFeed>>
    with MissionFeedRef {
  _MissionFeedProviderElement(super.provider);

  @override
  int? get farmclubId => (origin as MissionFeedProvider).farmclubId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
