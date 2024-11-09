// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_comment_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$diaryCommentNotifierHash() =>
    r'0a723370ba236bf436020c2cc4681823e68062e4';

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

/// See also [diaryCommentNotifier].
@ProviderFor(diaryCommentNotifier)
const diaryCommentNotifierProvider = DiaryCommentNotifierFamily();

/// See also [diaryCommentNotifier].
class DiaryCommentNotifierFamily extends Family<AsyncValue<DiaryDataModel>> {
  /// See also [diaryCommentNotifier].
  const DiaryCommentNotifierFamily();

  /// See also [diaryCommentNotifier].
  DiaryCommentNotifierProvider call(
    int diaryId,
  ) {
    return DiaryCommentNotifierProvider(
      diaryId,
    );
  }

  @override
  DiaryCommentNotifierProvider getProviderOverride(
    covariant DiaryCommentNotifierProvider provider,
  ) {
    return call(
      provider.diaryId,
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
  String? get name => r'diaryCommentNotifierProvider';
}

/// See also [diaryCommentNotifier].
class DiaryCommentNotifierProvider
    extends AutoDisposeFutureProvider<DiaryDataModel> {
  /// See also [diaryCommentNotifier].
  DiaryCommentNotifierProvider(
    int diaryId,
  ) : this._internal(
          (ref) => diaryCommentNotifier(
            ref as DiaryCommentNotifierRef,
            diaryId,
          ),
          from: diaryCommentNotifierProvider,
          name: r'diaryCommentNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$diaryCommentNotifierHash,
          dependencies: DiaryCommentNotifierFamily._dependencies,
          allTransitiveDependencies:
              DiaryCommentNotifierFamily._allTransitiveDependencies,
          diaryId: diaryId,
        );

  DiaryCommentNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.diaryId,
  }) : super.internal();

  final int diaryId;

  @override
  Override overrideWith(
    FutureOr<DiaryDataModel> Function(DiaryCommentNotifierRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DiaryCommentNotifierProvider._internal(
        (ref) => create(ref as DiaryCommentNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        diaryId: diaryId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DiaryDataModel> createElement() {
    return _DiaryCommentNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DiaryCommentNotifierProvider && other.diaryId == diaryId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, diaryId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DiaryCommentNotifierRef on AutoDisposeFutureProviderRef<DiaryDataModel> {
  /// The parameter `diaryId` of this provider.
  int get diaryId;
}

class _DiaryCommentNotifierProviderElement
    extends AutoDisposeFutureProviderElement<DiaryDataModel>
    with DiaryCommentNotifierRef {
  _DiaryCommentNotifierProviderElement(super.provider);

  @override
  int get diaryId => (origin as DiaryCommentNotifierProvider).diaryId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
