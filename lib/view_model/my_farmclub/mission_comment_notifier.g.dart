// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_comment_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$missionCommentNotifierHash() =>
    r'6132751f29c1c8c4eec7c03696f32519cdafc6de';

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

/// See also [missionCommentNotifier].
@ProviderFor(missionCommentNotifier)
const missionCommentNotifierProvider = MissionCommentNotifierFamily();

/// See also [missionCommentNotifier].
class MissionCommentNotifierFamily
    extends Family<AsyncValue<MissionDataModel>> {
  /// See also [missionCommentNotifier].
  const MissionCommentNotifierFamily();

  /// See also [missionCommentNotifier].
  MissionCommentNotifierProvider call(
    int missionPostId,
  ) {
    return MissionCommentNotifierProvider(
      missionPostId,
    );
  }

  @override
  MissionCommentNotifierProvider getProviderOverride(
    covariant MissionCommentNotifierProvider provider,
  ) {
    return call(
      provider.missionPostId,
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
  String? get name => r'missionCommentNotifierProvider';
}

/// See also [missionCommentNotifier].
class MissionCommentNotifierProvider
    extends AutoDisposeFutureProvider<MissionDataModel> {
  /// See also [missionCommentNotifier].
  MissionCommentNotifierProvider(
    int missionPostId,
  ) : this._internal(
          (ref) => missionCommentNotifier(
            ref as MissionCommentNotifierRef,
            missionPostId,
          ),
          from: missionCommentNotifierProvider,
          name: r'missionCommentNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$missionCommentNotifierHash,
          dependencies: MissionCommentNotifierFamily._dependencies,
          allTransitiveDependencies:
              MissionCommentNotifierFamily._allTransitiveDependencies,
          missionPostId: missionPostId,
        );

  MissionCommentNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.missionPostId,
  }) : super.internal();

  final int missionPostId;

  @override
  Override overrideWith(
    FutureOr<MissionDataModel> Function(MissionCommentNotifierRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MissionCommentNotifierProvider._internal(
        (ref) => create(ref as MissionCommentNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        missionPostId: missionPostId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MissionDataModel> createElement() {
    return _MissionCommentNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MissionCommentNotifierProvider &&
        other.missionPostId == missionPostId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, missionPostId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MissionCommentNotifierRef
    on AutoDisposeFutureProviderRef<MissionDataModel> {
  /// The parameter `missionPostId` of this provider.
  int get missionPostId;
}

class _MissionCommentNotifierProviderElement
    extends AutoDisposeFutureProviderElement<MissionDataModel>
    with MissionCommentNotifierRef {
  _MissionCommentNotifierProviderElement(super.provider);

  @override
  int get missionPostId =>
      (origin as MissionCommentNotifierProvider).missionPostId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
