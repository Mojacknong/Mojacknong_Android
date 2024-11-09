// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_user_list_model_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$missionUserListModelHash() =>
    r'4f172351d94c22d7fc55cc1348174467ae8c37ef';

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

/// See also [missionUserListModel].
@ProviderFor(missionUserListModel)
const missionUserListModelProvider = MissionUserListModelFamily();

/// See also [missionUserListModel].
class MissionUserListModelFamily
    extends Family<AsyncValue<List<MissionUserListModel>>> {
  /// See also [missionUserListModel].
  const MissionUserListModelFamily();

  /// See also [missionUserListModel].
  MissionUserListModelProvider call(
    int? farmClubId,
  ) {
    return MissionUserListModelProvider(
      farmClubId,
    );
  }

  @override
  MissionUserListModelProvider getProviderOverride(
    covariant MissionUserListModelProvider provider,
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
  String? get name => r'missionUserListModelProvider';
}

/// See also [missionUserListModel].
class MissionUserListModelProvider
    extends AutoDisposeFutureProvider<List<MissionUserListModel>> {
  /// See also [missionUserListModel].
  MissionUserListModelProvider(
    int? farmClubId,
  ) : this._internal(
          (ref) => missionUserListModel(
            ref as MissionUserListModelRef,
            farmClubId,
          ),
          from: missionUserListModelProvider,
          name: r'missionUserListModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$missionUserListModelHash,
          dependencies: MissionUserListModelFamily._dependencies,
          allTransitiveDependencies:
              MissionUserListModelFamily._allTransitiveDependencies,
          farmClubId: farmClubId,
        );

  MissionUserListModelProvider._internal(
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
    FutureOr<List<MissionUserListModel>> Function(
            MissionUserListModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MissionUserListModelProvider._internal(
        (ref) => create(ref as MissionUserListModelRef),
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
  AutoDisposeFutureProviderElement<List<MissionUserListModel>> createElement() {
    return _MissionUserListModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MissionUserListModelProvider &&
        other.farmClubId == farmClubId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, farmClubId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MissionUserListModelRef
    on AutoDisposeFutureProviderRef<List<MissionUserListModel>> {
  /// The parameter `farmClubId` of this provider.
  int? get farmClubId;
}

class _MissionUserListModelProviderElement
    extends AutoDisposeFutureProviderElement<List<MissionUserListModel>>
    with MissionUserListModelRef {
  _MissionUserListModelProviderElement(super.provider);

  @override
  int? get farmClubId => (origin as MissionUserListModelProvider).farmClubId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
