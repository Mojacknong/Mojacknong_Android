// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_profile_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myVeggieProfileHash() => r'c4e1f710f95831b2350a6e3b3b45412bdff71afa';

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

/// See also [myVeggieProfile].
@ProviderFor(myVeggieProfile)
const myVeggieProfileProvider = MyVeggieProfileFamily();

/// See also [myVeggieProfile].
class MyVeggieProfileFamily extends Family<AsyncValue<MyVeggieProfile>> {
  /// See also [myVeggieProfile].
  const MyVeggieProfileFamily();

  /// See also [myVeggieProfile].
  MyVeggieProfileProvider call(
    int myVeggieId,
  ) {
    return MyVeggieProfileProvider(
      myVeggieId,
    );
  }

  @override
  MyVeggieProfileProvider getProviderOverride(
    covariant MyVeggieProfileProvider provider,
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
  String? get name => r'myVeggieProfileProvider';
}

/// See also [myVeggieProfile].
class MyVeggieProfileProvider
    extends AutoDisposeFutureProvider<MyVeggieProfile> {
  /// See also [myVeggieProfile].
  MyVeggieProfileProvider(
    int myVeggieId,
  ) : this._internal(
          (ref) => myVeggieProfile(
            ref as MyVeggieProfileRef,
            myVeggieId,
          ),
          from: myVeggieProfileProvider,
          name: r'myVeggieProfileProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myVeggieProfileHash,
          dependencies: MyVeggieProfileFamily._dependencies,
          allTransitiveDependencies:
              MyVeggieProfileFamily._allTransitiveDependencies,
          myVeggieId: myVeggieId,
        );

  MyVeggieProfileProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.myVeggieId,
  }) : super.internal();

  final int myVeggieId;

  @override
  Override overrideWith(
    FutureOr<MyVeggieProfile> Function(MyVeggieProfileRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyVeggieProfileProvider._internal(
        (ref) => create(ref as MyVeggieProfileRef),
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
  AutoDisposeFutureProviderElement<MyVeggieProfile> createElement() {
    return _MyVeggieProfileProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyVeggieProfileProvider && other.myVeggieId == myVeggieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myVeggieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MyVeggieProfileRef on AutoDisposeFutureProviderRef<MyVeggieProfile> {
  /// The parameter `myVeggieId` of this provider.
  int get myVeggieId;
}

class _MyVeggieProfileProviderElement
    extends AutoDisposeFutureProviderElement<MyVeggieProfile>
    with MyVeggieProfileRef {
  _MyVeggieProfileProviderElement(super.provider);

  @override
  int get myVeggieId => (origin as MyVeggieProfileProvider).myVeggieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
