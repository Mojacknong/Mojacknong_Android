// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_comment_report_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$diaryCommentReportNotifierHash() =>
    r'22917c38984f98a5d67eeb7dfc51a1ca35dfc207';

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

/// See also [diaryCommentReportNotifier].
@ProviderFor(diaryCommentReportNotifier)
const diaryCommentReportNotifierProvider = DiaryCommentReportNotifierFamily();

/// See also [diaryCommentReportNotifier].
class DiaryCommentReportNotifierFamily extends Family<AsyncValue<String>> {
  /// See also [diaryCommentReportNotifier].
  const DiaryCommentReportNotifierFamily();

  /// See also [diaryCommentReportNotifier].
  DiaryCommentReportNotifierProvider call(
    int commentId,
    String reason,
  ) {
    return DiaryCommentReportNotifierProvider(
      commentId,
      reason,
    );
  }

  @override
  DiaryCommentReportNotifierProvider getProviderOverride(
    covariant DiaryCommentReportNotifierProvider provider,
  ) {
    return call(
      provider.commentId,
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
  String? get name => r'diaryCommentReportNotifierProvider';
}

/// See also [diaryCommentReportNotifier].
class DiaryCommentReportNotifierProvider
    extends AutoDisposeFutureProvider<String> {
  /// See also [diaryCommentReportNotifier].
  DiaryCommentReportNotifierProvider(
    int commentId,
    String reason,
  ) : this._internal(
          (ref) => diaryCommentReportNotifier(
            ref as DiaryCommentReportNotifierRef,
            commentId,
            reason,
          ),
          from: diaryCommentReportNotifierProvider,
          name: r'diaryCommentReportNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$diaryCommentReportNotifierHash,
          dependencies: DiaryCommentReportNotifierFamily._dependencies,
          allTransitiveDependencies:
              DiaryCommentReportNotifierFamily._allTransitiveDependencies,
          commentId: commentId,
          reason: reason,
        );

  DiaryCommentReportNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.commentId,
    required this.reason,
  }) : super.internal();

  final int commentId;
  final String reason;

  @override
  Override overrideWith(
    FutureOr<String> Function(DiaryCommentReportNotifierRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DiaryCommentReportNotifierProvider._internal(
        (ref) => create(ref as DiaryCommentReportNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        commentId: commentId,
        reason: reason,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _DiaryCommentReportNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DiaryCommentReportNotifierProvider &&
        other.commentId == commentId &&
        other.reason == reason;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, commentId.hashCode);
    hash = _SystemHash.combine(hash, reason.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DiaryCommentReportNotifierRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `commentId` of this provider.
  int get commentId;

  /// The parameter `reason` of this provider.
  String get reason;
}

class _DiaryCommentReportNotifierProviderElement
    extends AutoDisposeFutureProviderElement<String>
    with DiaryCommentReportNotifierRef {
  _DiaryCommentReportNotifierProviderElement(super.provider);

  @override
  int get commentId => (origin as DiaryCommentReportNotifierProvider).commentId;
  @override
  String get reason => (origin as DiaryCommentReportNotifierProvider).reason;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
