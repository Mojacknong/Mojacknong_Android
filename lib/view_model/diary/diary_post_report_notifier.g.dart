// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_post_report_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$diaryPostReportNotifierHash() =>
    r'ee2bb2c163be60c56b120083076b213c6c9267ed';

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

/// See also [diaryPostReportNotifier].
@ProviderFor(diaryPostReportNotifier)
const diaryPostReportNotifierProvider = DiaryPostReportNotifierFamily();

/// See also [diaryPostReportNotifier].
class DiaryPostReportNotifierFamily extends Family<AsyncValue<String>> {
  /// See also [diaryPostReportNotifier].
  const DiaryPostReportNotifierFamily();

  /// See also [diaryPostReportNotifier].
  DiaryPostReportNotifierProvider call(
    int diaryId,
    String reason,
  ) {
    return DiaryPostReportNotifierProvider(
      diaryId,
      reason,
    );
  }

  @override
  DiaryPostReportNotifierProvider getProviderOverride(
    covariant DiaryPostReportNotifierProvider provider,
  ) {
    return call(
      provider.diaryId,
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
  String? get name => r'diaryPostReportNotifierProvider';
}

/// See also [diaryPostReportNotifier].
class DiaryPostReportNotifierProvider
    extends AutoDisposeFutureProvider<String> {
  /// See also [diaryPostReportNotifier].
  DiaryPostReportNotifierProvider(
    int diaryId,
    String reason,
  ) : this._internal(
          (ref) => diaryPostReportNotifier(
            ref as DiaryPostReportNotifierRef,
            diaryId,
            reason,
          ),
          from: diaryPostReportNotifierProvider,
          name: r'diaryPostReportNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$diaryPostReportNotifierHash,
          dependencies: DiaryPostReportNotifierFamily._dependencies,
          allTransitiveDependencies:
              DiaryPostReportNotifierFamily._allTransitiveDependencies,
          diaryId: diaryId,
          reason: reason,
        );

  DiaryPostReportNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.diaryId,
    required this.reason,
  }) : super.internal();

  final int diaryId;
  final String reason;

  @override
  Override overrideWith(
    FutureOr<String> Function(DiaryPostReportNotifierRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DiaryPostReportNotifierProvider._internal(
        (ref) => create(ref as DiaryPostReportNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        diaryId: diaryId,
        reason: reason,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _DiaryPostReportNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DiaryPostReportNotifierProvider &&
        other.diaryId == diaryId &&
        other.reason == reason;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diaryId.hashCode);
    hash = _SystemHash.combine(hash, reason.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DiaryPostReportNotifierRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `diaryId` of this provider.
  int get diaryId;

  /// The parameter `reason` of this provider.
  String get reason;
}

class _DiaryPostReportNotifierProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with DiaryPostReportNotifierRef {
  _DiaryPostReportNotifierProviderElement(super.provider);

  @override
  int get diaryId => (origin as DiaryPostReportNotifierProvider).diaryId;
  @override
  String get reason => (origin as DiaryPostReportNotifierProvider).reason;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
