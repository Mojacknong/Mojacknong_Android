// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veggie_diary_one_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$veggieDiaryModelHash() => r'c45659f4fbd1572e49f84ac9779a419cfeec8208';

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

/// See also [veggieDiaryModel].
@ProviderFor(veggieDiaryModel)
const veggieDiaryModelProvider = VeggieDiaryModelFamily();

/// See also [veggieDiaryModel].
class VeggieDiaryModelFamily extends Family<AsyncValue<VeggieDiaryModel>> {
  /// See also [veggieDiaryModel].
  const VeggieDiaryModelFamily();

  /// See also [veggieDiaryModel].
  VeggieDiaryModelProvider call(
    String myVeggieId,
  ) {
    return VeggieDiaryModelProvider(
      myVeggieId,
    );
  }

  @override
  VeggieDiaryModelProvider getProviderOverride(
    covariant VeggieDiaryModelProvider provider,
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
  String? get name => r'veggieDiaryModelProvider';
}

/// See also [veggieDiaryModel].
class VeggieDiaryModelProvider
    extends AutoDisposeFutureProvider<VeggieDiaryModel> {
  /// See also [veggieDiaryModel].
  VeggieDiaryModelProvider(
    String myVeggieId,
  ) : this._internal(
          (ref) => veggieDiaryModel(
            ref as VeggieDiaryModelRef,
            myVeggieId,
          ),
          from: veggieDiaryModelProvider,
          name: r'veggieDiaryModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$veggieDiaryModelHash,
          dependencies: VeggieDiaryModelFamily._dependencies,
          allTransitiveDependencies:
              VeggieDiaryModelFamily._allTransitiveDependencies,
          myVeggieId: myVeggieId,
        );

  VeggieDiaryModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.myVeggieId,
  }) : super.internal();

  final String myVeggieId;

  @override
  Override overrideWith(
    FutureOr<VeggieDiaryModel> Function(VeggieDiaryModelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VeggieDiaryModelProvider._internal(
        (ref) => create(ref as VeggieDiaryModelRef),
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
  AutoDisposeFutureProviderElement<VeggieDiaryModel> createElement() {
    return _VeggieDiaryModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VeggieDiaryModelProvider && other.myVeggieId == myVeggieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myVeggieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VeggieDiaryModelRef on AutoDisposeFutureProviderRef<VeggieDiaryModel> {
  /// The parameter `myVeggieId` of this provider.
  String get myVeggieId;
}

class _VeggieDiaryModelProviderElement
    extends AutoDisposeFutureProviderElement<VeggieDiaryModel>
    with VeggieDiaryModelRef {
  _VeggieDiaryModelProviderElement(super.provider);

  @override
  String get myVeggieId => (origin as VeggieDiaryModelProvider).myVeggieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
