// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'veggie_diary_one_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$veggieDiaryOneModelHash() =>
    r'8158597ddbc8b1c00d3e5dd03b44a852e7aa0530';

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

/// See also [veggieDiaryOneModel].
@ProviderFor(veggieDiaryOneModel)
const veggieDiaryOneModelProvider = VeggieDiaryOneModelFamily();

/// See also [veggieDiaryOneModel].
class VeggieDiaryOneModelFamily
    extends Family<AsyncValue<VeggieDiaryOneModel?>> {
  /// See also [veggieDiaryOneModel].
  const VeggieDiaryOneModelFamily();

  /// See also [veggieDiaryOneModel].
  VeggieDiaryOneModelProvider call(
    String myVeggieId,
  ) {
    return VeggieDiaryOneModelProvider(
      myVeggieId,
    );
  }

  @override
  VeggieDiaryOneModelProvider getProviderOverride(
    covariant VeggieDiaryOneModelProvider provider,
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
  String? get name => r'veggieDiaryOneModelProvider';
}

/// See also [veggieDiaryOneModel].
class VeggieDiaryOneModelProvider
    extends AutoDisposeFutureProvider<VeggieDiaryOneModel?> {
  /// See also [veggieDiaryOneModel].
  VeggieDiaryOneModelProvider(
    String myVeggieId,
  ) : this._internal(
          (ref) => veggieDiaryOneModel(
            ref as VeggieDiaryOneModelRef,
            myVeggieId,
          ),
          from: veggieDiaryOneModelProvider,
          name: r'veggieDiaryOneModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$veggieDiaryOneModelHash,
          dependencies: VeggieDiaryOneModelFamily._dependencies,
          allTransitiveDependencies:
              VeggieDiaryOneModelFamily._allTransitiveDependencies,
          myVeggieId: myVeggieId,
        );

  VeggieDiaryOneModelProvider._internal(
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
    FutureOr<VeggieDiaryOneModel?> Function(VeggieDiaryOneModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: VeggieDiaryOneModelProvider._internal(
        (ref) => create(ref as VeggieDiaryOneModelRef),
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
  AutoDisposeFutureProviderElement<VeggieDiaryOneModel?> createElement() {
    return _VeggieDiaryOneModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VeggieDiaryOneModelProvider &&
        other.myVeggieId == myVeggieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myVeggieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VeggieDiaryOneModelRef
    on AutoDisposeFutureProviderRef<VeggieDiaryOneModel?> {
  /// The parameter `myVeggieId` of this provider.
  String get myVeggieId;
}

class _VeggieDiaryOneModelProviderElement
    extends AutoDisposeFutureProviderElement<VeggieDiaryOneModel?>
    with VeggieDiaryOneModelRef {
  _VeggieDiaryOneModelProviderElement(super.provider);

  @override
  String get myVeggieId => (origin as VeggieDiaryOneModelProvider).myVeggieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
