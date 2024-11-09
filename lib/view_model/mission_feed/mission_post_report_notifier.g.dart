// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_post_report_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$missionPostReportNotifierHash() =>
    r'4f14e9a3d25684960a90176a13d6d34d28460dfe';

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

/// See also [missionPostReportNotifier].
@ProviderFor(missionPostReportNotifier)
const missionPostReportNotifierProvider = MissionPostReportNotifierFamily();

/// See also [missionPostReportNotifier].
class MissionPostReportNotifierFamily extends Family<AsyncValue<String>> {
  /// See also [missionPostReportNotifier].
  const MissionPostReportNotifierFamily();

  /// See also [missionPostReportNotifier].
  MissionPostReportNotifierProvider call(
    int missionPostId,
    String reason,
  ) {
    return MissionPostReportNotifierProvider(
      missionPostId,
      reason,
    );
  }

  @override
  MissionPostReportNotifierProvider getProviderOverride(
    covariant MissionPostReportNotifierProvider provider,
  ) {
    return call(
      provider.missionPostId,
      provider.reason,
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
  String? get name => r'missionPostReportNotifierProvider';
}

/// See also [missionPostReportNotifier].
class MissionPostReportNotifierProvider
    extends AutoDisposeFutureProvider<String> {
  /// See also [missionPostReportNotifier].
  MissionPostReportNotifierProvider(
    int missionPostId,
    String reason,
  ) : this._internal(
          (ref) => missionPostReportNotifier(
            ref as MissionPostReportNotifierRef,
            missionPostId,
            reason,
          ),
          from: missionPostReportNotifierProvider,
          name: r'missionPostReportNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$missionPostReportNotifierHash,
          dependencies: MissionPostReportNotifierFamily._dependencies,
          allTransitiveDependencies:
              MissionPostReportNotifierFamily._allTransitiveDependencies,
          missionPostId: missionPostId,
          reason: reason,
        );

  MissionPostReportNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.missionPostId,
    required this.reason,
  }) : super.internal();

  final int missionPostId;
  final String reason;

  @override
  Override overrideWith(
    FutureOr<String> Function(MissionPostReportNotifierRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MissionPostReportNotifierProvider._internal(
        (ref) => create(ref as MissionPostReportNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        missionPostId: missionPostId,
        reason: reason,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _MissionPostReportNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MissionPostReportNotifierProvider &&
        other.missionPostId == missionPostId &&
        other.reason == reason;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, missionPostId.hashCode);
    hash = _SystemHash.combine(hash, reason.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MissionPostReportNotifierRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `missionPostId` of this provider.
  int get missionPostId;

  /// The parameter `reason` of this provider.
  String get reason;
}

class _MissionPostReportNotifierProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with MissionPostReportNotifierRef {
  _MissionPostReportNotifierProviderElement(super.provider);

  @override
  int get missionPostId =>
      (origin as MissionPostReportNotifierProvider).missionPostId;
  @override
  String get reason => (origin as MissionPostReportNotifierProvider).reason;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
