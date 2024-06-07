// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_diary.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myVeggieDiaryHash() => r'520f3bd77208e96d0bc2842ad8b0ed612667590a';

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

/// See also [myVeggieDiary].
@ProviderFor(myVeggieDiary)
const myVeggieDiaryProvider = MyVeggieDiaryFamily();

/// See also [myVeggieDiary].
class MyVeggieDiaryFamily extends Family<AsyncValue<List<MyVeggieDiary>>> {
  /// See also [myVeggieDiary].
  const MyVeggieDiaryFamily();

  /// See also [myVeggieDiary].
  MyVeggieDiaryProvider call(
    int myVeggieId,
  ) {
    return MyVeggieDiaryProvider(
      myVeggieId,
    );
  }

  @override
  MyVeggieDiaryProvider getProviderOverride(
    covariant MyVeggieDiaryProvider provider,
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
  String? get name => r'myVeggieDiaryProvider';
}

/// See also [myVeggieDiary].
class MyVeggieDiaryProvider
    extends AutoDisposeFutureProvider<List<MyVeggieDiary>> {
  /// See also [myVeggieDiary].
  MyVeggieDiaryProvider(
    int myVeggieId,
  ) : this._internal(
          (ref) => myVeggieDiary(
            ref as MyVeggieDiaryRef,
            myVeggieId,
          ),
          from: myVeggieDiaryProvider,
          name: r'myVeggieDiaryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myVeggieDiaryHash,
          dependencies: MyVeggieDiaryFamily._dependencies,
          allTransitiveDependencies:
              MyVeggieDiaryFamily._allTransitiveDependencies,
          myVeggieId: myVeggieId,
        );

  MyVeggieDiaryProvider._internal(
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
    FutureOr<List<MyVeggieDiary>> Function(MyVeggieDiaryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyVeggieDiaryProvider._internal(
        (ref) => create(ref as MyVeggieDiaryRef),
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
  AutoDisposeFutureProviderElement<List<MyVeggieDiary>> createElement() {
    return _MyVeggieDiaryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyVeggieDiaryProvider && other.myVeggieId == myVeggieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myVeggieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MyVeggieDiaryRef on AutoDisposeFutureProviderRef<List<MyVeggieDiary>> {
  /// The parameter `myVeggieId` of this provider.
  int get myVeggieId;
}

class _MyVeggieDiaryProviderElement
    extends AutoDisposeFutureProviderElement<List<MyVeggieDiary>>
    with MyVeggieDiaryRef {
  _MyVeggieDiaryProviderElement(super.provider);

  @override
  int get myVeggieId => (origin as MyVeggieDiaryProvider).myVeggieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
