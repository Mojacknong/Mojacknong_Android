// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_diary_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myVeggieDiaryNotifierHash() =>
    r'909a9d2b544e30dc55efd11f0a648e95564d21bb';

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

/// See also [myVeggieDiaryNotifier].
@ProviderFor(myVeggieDiaryNotifier)
const myVeggieDiaryNotifierProvider = MyVeggieDiaryNotifierFamily();

/// See also [myVeggieDiaryNotifier].
class MyVeggieDiaryNotifierFamily
    extends Family<AsyncValue<List<MyVeggieDiary>>> {
  /// See also [myVeggieDiaryNotifier].
  const MyVeggieDiaryNotifierFamily();

  /// See also [myVeggieDiaryNotifier].
  MyVeggieDiaryNotifierProvider call(
    int? myVeggieId,
  ) {
    return MyVeggieDiaryNotifierProvider(
      myVeggieId,
    );
  }

  @override
  MyVeggieDiaryNotifierProvider getProviderOverride(
    covariant MyVeggieDiaryNotifierProvider provider,
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
  String? get name => r'myVeggieDiaryNotifierProvider';
}

/// See also [myVeggieDiaryNotifier].
class MyVeggieDiaryNotifierProvider
    extends AutoDisposeFutureProvider<List<MyVeggieDiary>> {
  /// See also [myVeggieDiaryNotifier].
  MyVeggieDiaryNotifierProvider(
    int? myVeggieId,
  ) : this._internal(
          (ref) => myVeggieDiaryNotifier(
            ref as MyVeggieDiaryNotifierRef,
            myVeggieId,
          ),
          from: myVeggieDiaryNotifierProvider,
          name: r'myVeggieDiaryNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myVeggieDiaryNotifierHash,
          dependencies: MyVeggieDiaryNotifierFamily._dependencies,
          allTransitiveDependencies:
              MyVeggieDiaryNotifierFamily._allTransitiveDependencies,
          myVeggieId: myVeggieId,
        );

  MyVeggieDiaryNotifierProvider._internal(
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
    FutureOr<List<MyVeggieDiary>> Function(MyVeggieDiaryNotifierRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyVeggieDiaryNotifierProvider._internal(
        (ref) => create(ref as MyVeggieDiaryNotifierRef),
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
    return _MyVeggieDiaryNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyVeggieDiaryNotifierProvider &&
        other.myVeggieId == myVeggieId;
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
mixin MyVeggieDiaryNotifierRef
    on AutoDisposeFutureProviderRef<List<MyVeggieDiary>> {
  /// The parameter `myVeggieId` of this provider.
  int? get myVeggieId;
}

class _MyVeggieDiaryNotifierProviderElement
    extends AutoDisposeFutureProviderElement<List<MyVeggieDiary>>
    with MyVeggieDiaryNotifierRef {
  _MyVeggieDiaryNotifierProviderElement(super.provider);

  @override
  int? get myVeggieId => (origin as MyVeggieDiaryNotifierProvider).myVeggieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
