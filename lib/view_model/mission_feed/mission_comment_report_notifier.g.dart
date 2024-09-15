// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mission_comment_report_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$missionCommentReportNotifierHash() =>
    r'd235afd04245dbfead344af10e5f717bded77711';

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

/// See also [missionCommentReportNotifier].
@ProviderFor(missionCommentReportNotifier)
const missionCommentReportNotifierProvider =
    MissionCommentReportNotifierFamily();

/// See also [missionCommentReportNotifier].
class MissionCommentReportNotifierFamily extends Family<AsyncValue<String>> {
  /// See also [missionCommentReportNotifier].
  const MissionCommentReportNotifierFamily();

  /// See also [missionCommentReportNotifier].
  MissionCommentReportNotifierProvider call(
    int missionPostCommentId,
    String reason,
  ) {
    return MissionCommentReportNotifierProvider(
      missionPostCommentId,
      reason,
    );
  }

  @override
  MissionCommentReportNotifierProvider getProviderOverride(
    covariant MissionCommentReportNotifierProvider provider,
  ) {
    return call(
      provider.missionPostCommentId,
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
  String? get name => r'missionCommentReportNotifierProvider';
}

/// See also [missionCommentReportNotifier].
class MissionCommentReportNotifierProvider
    extends AutoDisposeFutureProvider<String> {
  /// See also [missionCommentReportNotifier].
  MissionCommentReportNotifierProvider(
    int missionPostCommentId,
    String reason,
  ) : this._internal(
          (ref) => missionCommentReportNotifier(
            ref as MissionCommentReportNotifierRef,
            missionPostCommentId,
            reason,
          ),
          from: missionCommentReportNotifierProvider,
          name: r'missionCommentReportNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$missionCommentReportNotifierHash,
          dependencies: MissionCommentReportNotifierFamily._dependencies,
          allTransitiveDependencies:
              MissionCommentReportNotifierFamily._allTransitiveDependencies,
          missionPostCommentId: missionPostCommentId,
          reason: reason,
        );

  MissionCommentReportNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.missionPostCommentId,
    required this.reason,
  }) : super.internal();

  final int missionPostCommentId;
  final String reason;

  @override
  Override overrideWith(
    FutureOr<String> Function(MissionCommentReportNotifierRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MissionCommentReportNotifierProvider._internal(
        (ref) => create(ref as MissionCommentReportNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        missionPostCommentId: missionPostCommentId,
        reason: reason,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _MissionCommentReportNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MissionCommentReportNotifierProvider &&
        other.missionPostCommentId == missionPostCommentId &&
        other.reason == reason;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, missionPostCommentId.hashCode);
    hash = _SystemHash.combine(hash, reason.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MissionCommentReportNotifierRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `missionPostCommentId` of this provider.
  int get missionPostCommentId;

  /// The parameter `reason` of this provider.
  String get reason;
}

class _MissionCommentReportNotifierProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with MissionCommentReportNotifierRef {
  _MissionCommentReportNotifierProviderElement(super.provider);

  @override
  int get missionPostCommentId =>
      (origin as MissionCommentReportNotifierProvider).missionPostCommentId;
  @override
  String get reason => (origin as MissionCommentReportNotifierProvider).reason;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
