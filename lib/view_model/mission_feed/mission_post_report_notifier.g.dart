// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_post_report_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$missionPostReportModelHash() =>
    r'9de464a7f30e2daaec1e68f4e56ad4b3c4513bf0';

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

/// See also [missionPostReportModel].
@ProviderFor(missionPostReportModel)
const missionPostReportModelProvider = MissionPostReportModelFamily();

/// See also [missionPostReportModel].
class MissionPostReportModelFamily extends Family<AsyncValue<String>> {
  /// See also [missionPostReportModel].
  const MissionPostReportModelFamily();

  /// See also [missionPostReportModel].
  MissionPostReportModelProvider call(
    int missionPostId,
    String reason,
  ) {
    return MissionPostReportModelProvider(
      missionPostId,
      reason,
    );
  }

  @override
  MissionPostReportModelProvider getProviderOverride(
    covariant MissionPostReportModelProvider provider,
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
  String? get name => r'missionPostReportModelProvider';
}

/// See also [missionPostReportModel].
class MissionPostReportModelProvider extends AutoDisposeFutureProvider<String> {
  /// See also [missionPostReportModel].
  MissionPostReportModelProvider(
    int missionPostId,
    String reason,
  ) : this._internal(
          (ref) => missionPostReportModel(
            ref as MissionPostReportModelRef,
            missionPostId,
            reason,
          ),
          from: missionPostReportModelProvider,
          name: r'missionPostReportModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$missionPostReportModelHash,
          dependencies: MissionPostReportModelFamily._dependencies,
          allTransitiveDependencies:
              MissionPostReportModelFamily._allTransitiveDependencies,
          missionPostId: missionPostId,
          reason: reason,
        );

  MissionPostReportModelProvider._internal(
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
    FutureOr<String> Function(MissionPostReportModelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MissionPostReportModelProvider._internal(
        (ref) => create(ref as MissionPostReportModelRef),
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
    return _MissionPostReportModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MissionPostReportModelProvider &&
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

mixin MissionPostReportModelRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `missionPostId` of this provider.
  int get missionPostId;

  /// The parameter `reason` of this provider.
  String get reason;
}

class _MissionPostReportModelProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with MissionPostReportModelRef {
  _MissionPostReportModelProviderElement(super.provider);

  @override
  int get missionPostId =>
      (origin as MissionPostReportModelProvider).missionPostId;
  @override
  String get reason => (origin as MissionPostReportModelProvider).reason;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
