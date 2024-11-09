// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_sign_veggie_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$farmclubSignupModelHash() =>
    r'3c417a5e36ebb338abbadde80750e575ed84fc08';

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

/// See also [farmclubSignupModel].
@ProviderFor(farmclubSignupModel)
const farmclubSignupModelProvider = FarmclubSignupModelFamily();

/// See also [farmclubSignupModel].
class FarmclubSignupModelFamily
    extends Family<AsyncValue<FarmclubSignupModel>> {
  /// See also [farmclubSignupModel].
  const FarmclubSignupModelFamily();

  /// See also [farmclubSignupModel].
  FarmclubSignupModelProvider call(
    String veggieInfoId,
  ) {
    return FarmclubSignupModelProvider(
      veggieInfoId,
    );
  }

  @override
  FarmclubSignupModelProvider getProviderOverride(
    covariant FarmclubSignupModelProvider provider,
  ) {
    return call(
      provider.veggieInfoId,
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
  String? get name => r'farmclubSignupModelProvider';
}

/// See also [farmclubSignupModel].
class FarmclubSignupModelProvider
    extends AutoDisposeFutureProvider<FarmclubSignupModel> {
  /// See also [farmclubSignupModel].
  FarmclubSignupModelProvider(
    String veggieInfoId,
  ) : this._internal(
          (ref) => farmclubSignupModel(
            ref as FarmclubSignupModelRef,
            veggieInfoId,
          ),
          from: farmclubSignupModelProvider,
          name: r'farmclubSignupModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$farmclubSignupModelHash,
          dependencies: FarmclubSignupModelFamily._dependencies,
          allTransitiveDependencies:
              FarmclubSignupModelFamily._allTransitiveDependencies,
          veggieInfoId: veggieInfoId,
        );

  FarmclubSignupModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.veggieInfoId,
  }) : super.internal();

  final String veggieInfoId;

  @override
  Override overrideWith(
    FutureOr<FarmclubSignupModel> Function(FarmclubSignupModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FarmclubSignupModelProvider._internal(
        (ref) => create(ref as FarmclubSignupModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        veggieInfoId: veggieInfoId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<FarmclubSignupModel> createElement() {
    return _FarmclubSignupModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FarmclubSignupModelProvider &&
        other.veggieInfoId == veggieInfoId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, veggieInfoId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FarmclubSignupModelRef
    on AutoDisposeFutureProviderRef<FarmclubSignupModel> {
  /// The parameter `veggieInfoId` of this provider.
  String get veggieInfoId;
}

class _FarmclubSignupModelProviderElement
    extends AutoDisposeFutureProviderElement<FarmclubSignupModel>
    with FarmclubSignupModelRef {
  _FarmclubSignupModelProviderElement(super.provider);

  @override
  String get veggieInfoId =>
      (origin as FarmclubSignupModelProvider).veggieInfoId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
