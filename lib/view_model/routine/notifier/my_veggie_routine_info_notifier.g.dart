// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_routine_info_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myVeggieRoutineInfoModelHash() =>
    r'a3a683d1eafcc32ea5c61d6928823f530478c4fe';

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

/// See also [myVeggieRoutineInfoModel].
@ProviderFor(myVeggieRoutineInfoModel)
const myVeggieRoutineInfoModelProvider = MyVeggieRoutineInfoModelFamily();

/// See also [myVeggieRoutineInfoModel].
class MyVeggieRoutineInfoModelFamily
    extends Family<AsyncValue<List<MyVeggieRoutineInfoModel>>> {
  /// See also [myVeggieRoutineInfoModel].
  const MyVeggieRoutineInfoModelFamily();

  /// See also [myVeggieRoutineInfoModel].
  MyVeggieRoutineInfoModelProvider call(
    int? myVeggieId,
  ) {
    return MyVeggieRoutineInfoModelProvider(
      myVeggieId,
    );
  }

  @override
  MyVeggieRoutineInfoModelProvider getProviderOverride(
    covariant MyVeggieRoutineInfoModelProvider provider,
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
  String? get name => r'myVeggieRoutineInfoModelProvider';
}

/// See also [myVeggieRoutineInfoModel].
class MyVeggieRoutineInfoModelProvider
    extends AutoDisposeFutureProvider<List<MyVeggieRoutineInfoModel>> {
  /// See also [myVeggieRoutineInfoModel].
  MyVeggieRoutineInfoModelProvider(
    int? myVeggieId,
  ) : this._internal(
          (ref) => myVeggieRoutineInfoModel(
            ref as MyVeggieRoutineInfoModelRef,
            myVeggieId,
          ),
          from: myVeggieRoutineInfoModelProvider,
          name: r'myVeggieRoutineInfoModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myVeggieRoutineInfoModelHash,
          dependencies: MyVeggieRoutineInfoModelFamily._dependencies,
          allTransitiveDependencies:
              MyVeggieRoutineInfoModelFamily._allTransitiveDependencies,
          myVeggieId: myVeggieId,
        );

  MyVeggieRoutineInfoModelProvider._internal(
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
    FutureOr<List<MyVeggieRoutineInfoModel>> Function(
            MyVeggieRoutineInfoModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyVeggieRoutineInfoModelProvider._internal(
        (ref) => create(ref as MyVeggieRoutineInfoModelRef),
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
  AutoDisposeFutureProviderElement<List<MyVeggieRoutineInfoModel>>
      createElement() {
    return _MyVeggieRoutineInfoModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyVeggieRoutineInfoModelProvider &&
        other.myVeggieId == myVeggieId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myVeggieId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MyVeggieRoutineInfoModelRef
    on AutoDisposeFutureProviderRef<List<MyVeggieRoutineInfoModel>> {
  /// The parameter `myVeggieId` of this provider.
  int? get myVeggieId;
}

class _MyVeggieRoutineInfoModelProviderElement
    extends AutoDisposeFutureProviderElement<List<MyVeggieRoutineInfoModel>>
    with MyVeggieRoutineInfoModelRef {
  _MyVeggieRoutineInfoModelProviderElement(super.provider);

  @override
  int? get myVeggieId =>
      (origin as MyVeggieRoutineInfoModelProvider).myVeggieId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
