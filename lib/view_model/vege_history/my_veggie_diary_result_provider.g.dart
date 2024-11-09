// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_veggie_diary_result_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myVeggieDiaryResultModelHash() =>
    r'3d2c83bc7dde43c566a79ea980024b0e22e1db2f';

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

/// See also [myVeggieDiaryResultModel].
@ProviderFor(myVeggieDiaryResultModel)
const myVeggieDiaryResultModelProvider = MyVeggieDiaryResultModelFamily();

/// See also [myVeggieDiaryResultModel].
class MyVeggieDiaryResultModelFamily
    extends Family<AsyncValue<MyVeggieDiaryResultModel>> {
  /// See also [myVeggieDiaryResultModel].
  const MyVeggieDiaryResultModelFamily();

  /// See also [myVeggieDiaryResultModel].
  MyVeggieDiaryResultModelProvider call(
    String id,
  ) {
    return MyVeggieDiaryResultModelProvider(
      id,
    );
  }

  @override
  MyVeggieDiaryResultModelProvider getProviderOverride(
    covariant MyVeggieDiaryResultModelProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'myVeggieDiaryResultModelProvider';
}

/// See also [myVeggieDiaryResultModel].
class MyVeggieDiaryResultModelProvider
    extends AutoDisposeFutureProvider<MyVeggieDiaryResultModel> {
  /// See also [myVeggieDiaryResultModel].
  MyVeggieDiaryResultModelProvider(
    String id,
  ) : this._internal(
          (ref) => myVeggieDiaryResultModel(
            ref as MyVeggieDiaryResultModelRef,
            id,
          ),
          from: myVeggieDiaryResultModelProvider,
          name: r'myVeggieDiaryResultModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myVeggieDiaryResultModelHash,
          dependencies: MyVeggieDiaryResultModelFamily._dependencies,
          allTransitiveDependencies:
              MyVeggieDiaryResultModelFamily._allTransitiveDependencies,
          id: id,
        );

  MyVeggieDiaryResultModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  Override overrideWith(
    FutureOr<MyVeggieDiaryResultModel> Function(
            MyVeggieDiaryResultModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyVeggieDiaryResultModelProvider._internal(
        (ref) => create(ref as MyVeggieDiaryResultModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MyVeggieDiaryResultModel> createElement() {
    return _MyVeggieDiaryResultModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyVeggieDiaryResultModelProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyVeggieDiaryResultModelRef
    on AutoDisposeFutureProviderRef<MyVeggieDiaryResultModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _MyVeggieDiaryResultModelProviderElement
    extends AutoDisposeFutureProviderElement<MyVeggieDiaryResultModel>
    with MyVeggieDiaryResultModelRef {
  _MyVeggieDiaryResultModelProviderElement(super.provider);

  @override
  String get id => (origin as MyVeggieDiaryResultModelProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
