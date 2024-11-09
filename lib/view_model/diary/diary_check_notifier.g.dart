// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary_check_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$diaryCheckModelHash() => r'9da9a7fa5856562b560cbcb8e654fe5ec3cb90e4';

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

/// See also [diaryCheckModel].
@ProviderFor(diaryCheckModel)
const diaryCheckModelProvider = DiaryCheckModelFamily();

/// See also [diaryCheckModel].
class DiaryCheckModelFamily extends Family<AsyncValue<DiaryCheckModel>> {
  /// See also [diaryCheckModel].
  const DiaryCheckModelFamily();

  /// See also [diaryCheckModel].
  DiaryCheckModelProvider call(
    int? myVeggieId,
  ) {
    return DiaryCheckModelProvider(
      myVeggieId,
    );
  }

  @override
  DiaryCheckModelProvider getProviderOverride(
    covariant DiaryCheckModelProvider provider,
  ) {
    return call(
      provider.myVeggieId,
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
  String? get name => r'diaryCheckModelProvider';
}

/// See also [diaryCheckModel].
class DiaryCheckModelProvider
    extends AutoDisposeFutureProvider<DiaryCheckModel> {
  /// See also [diaryCheckModel].
  DiaryCheckModelProvider(
    int? myVeggieId,
  ) : this._internal(
          (ref) => diaryCheckModel(
            ref as DiaryCheckModelRef,
            myVeggieId,
          ),
          from: diaryCheckModelProvider,
          name: r'diaryCheckModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$diaryCheckModelHash,
          dependencies: DiaryCheckModelFamily._dependencies,
          allTransitiveDependencies:
              DiaryCheckModelFamily._allTransitiveDependencies,
          myVeggieId: myVeggieId,
        );

  DiaryCheckModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.myVeggieId,
  }) : super.internal();

  final int? myVeggieId;

  @override
  Override overrideWith(
    FutureOr<DiaryCheckModel> Function(DiaryCheckModelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DiaryCheckModelProvider._internal(
        (ref) => create(ref as DiaryCheckModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        myVeggieId: myVeggieId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<DiaryCheckModel> createElement() {
    return _DiaryCheckModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DiaryCheckModelProvider && other.myVeggieId == myVeggieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myVeggieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DiaryCheckModelRef on AutoDisposeFutureProviderRef<DiaryCheckModel> {
  /// The parameter `myVeggieId` of this provider.
  int? get myVeggieId;
}

class _DiaryCheckModelProviderElement
    extends AutoDisposeFutureProviderElement<DiaryCheckModel>
    with DiaryCheckModelRef {
  _DiaryCheckModelProviderElement(super.provider);

  @override
  int? get myVeggieId => (origin as DiaryCheckModelProvider).myVeggieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
