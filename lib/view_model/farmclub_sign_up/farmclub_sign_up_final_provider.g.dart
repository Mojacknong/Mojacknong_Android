// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_sign_up_final_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$signUpVeggieHash() => r'a7e963ba42784251bfac5b34c428be45cd2ef9e0';

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

/// See also [signUpVeggie].
@ProviderFor(signUpVeggie)
const signUpVeggieProvider = SignUpVeggieFamily();

/// See also [signUpVeggie].
class SignUpVeggieFamily extends Family<AsyncValue<FarmclubSignupModel>> {
  /// See also [signUpVeggie].
  const SignUpVeggieFamily();

  /// See also [signUpVeggie].
  SignUpVeggieProvider call(
    int farmClubId,
    int myVeggieId,
  ) {
    return SignUpVeggieProvider(
      farmClubId,
      myVeggieId,
    );
  }

  @override
  SignUpVeggieProvider getProviderOverride(
    covariant SignUpVeggieProvider provider,
  ) {
    return call(
      provider.farmClubId,
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
  String? get name => r'signUpVeggieProvider';
}

/// See also [signUpVeggie].
class SignUpVeggieProvider
    extends AutoDisposeFutureProvider<FarmclubSignupModel> {
  /// See also [signUpVeggie].
  SignUpVeggieProvider(
    int farmClubId,
    int myVeggieId,
  ) : this._internal(
          (ref) => signUpVeggie(
            ref as SignUpVeggieRef,
            farmClubId,
            myVeggieId,
          ),
          from: signUpVeggieProvider,
          name: r'signUpVeggieProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$signUpVeggieHash,
          dependencies: SignUpVeggieFamily._dependencies,
          allTransitiveDependencies:
              SignUpVeggieFamily._allTransitiveDependencies,
          farmClubId: farmClubId,
          myVeggieId: myVeggieId,
        );

  SignUpVeggieProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.farmClubId,
    required this.myVeggieId,
  }) : super.internal();

  final int farmClubId;
  final int myVeggieId;

  @override
  Override overrideWith(
    FutureOr<FarmclubSignupModel> Function(SignUpVeggieRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SignUpVeggieProvider._internal(
        (ref) => create(ref as SignUpVeggieRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        farmClubId: farmClubId,
        myVeggieId: myVeggieId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<FarmclubSignupModel> createElement() {
    return _SignUpVeggieProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SignUpVeggieProvider &&
        other.farmClubId == farmClubId &&
        other.myVeggieId == myVeggieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, farmClubId.hashCode);
    hash = _SystemHash.combine(hash, myVeggieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SignUpVeggieRef on AutoDisposeFutureProviderRef<FarmclubSignupModel> {
  /// The parameter `farmClubId` of this provider.
  int get farmClubId;

  /// The parameter `myVeggieId` of this provider.
  int get myVeggieId;
}

class _SignUpVeggieProviderElement
    extends AutoDisposeFutureProviderElement<FarmclubSignupModel>
    with SignUpVeggieRef {
  _SignUpVeggieProviderElement(super.provider);

  @override
  int get farmClubId => (origin as SignUpVeggieProvider).farmClubId;
  @override
  int get myVeggieId => (origin as SignUpVeggieProvider).myVeggieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
