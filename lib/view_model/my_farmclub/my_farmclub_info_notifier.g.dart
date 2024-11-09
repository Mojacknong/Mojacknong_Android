// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_farmclub_info_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myFarmclubInfoModelHash() =>
    r'5b5ef6a795d6af68d9880ddba112b85cf62b1f56';

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

/// See also [myFarmclubInfoModel].
@ProviderFor(myFarmclubInfoModel)
const myFarmclubInfoModelProvider = MyFarmclubInfoModelFamily();

/// See also [myFarmclubInfoModel].
class MyFarmclubInfoModelFamily
    extends Family<AsyncValue<MyFarmclubInfoModel>> {
  /// See also [myFarmclubInfoModel].
  const MyFarmclubInfoModelFamily();

  /// See also [myFarmclubInfoModel].
  MyFarmclubInfoModelProvider call(
    int? farmclubId,
  ) {
    return MyFarmclubInfoModelProvider(
      farmclubId,
    );
  }

  @override
  MyFarmclubInfoModelProvider getProviderOverride(
    covariant MyFarmclubInfoModelProvider provider,
  ) {
    return call(
      provider.farmclubId,
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
  String? get name => r'myFarmclubInfoModelProvider';
}

/// See also [myFarmclubInfoModel].
class MyFarmclubInfoModelProvider
    extends AutoDisposeFutureProvider<MyFarmclubInfoModel> {
  /// See also [myFarmclubInfoModel].
  MyFarmclubInfoModelProvider(
    int? farmclubId,
  ) : this._internal(
          (ref) => myFarmclubInfoModel(
            ref as MyFarmclubInfoModelRef,
            farmclubId,
          ),
          from: myFarmclubInfoModelProvider,
          name: r'myFarmclubInfoModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myFarmclubInfoModelHash,
          dependencies: MyFarmclubInfoModelFamily._dependencies,
          allTransitiveDependencies:
              MyFarmclubInfoModelFamily._allTransitiveDependencies,
          farmclubId: farmclubId,
        );

  MyFarmclubInfoModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.farmclubId,
  }) : super.internal();

  final int? farmclubId;

  @override
  Override overrideWith(
    FutureOr<MyFarmclubInfoModel> Function(MyFarmclubInfoModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyFarmclubInfoModelProvider._internal(
        (ref) => create(ref as MyFarmclubInfoModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        farmclubId: farmclubId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<MyFarmclubInfoModel> createElement() {
    return _MyFarmclubInfoModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyFarmclubInfoModelProvider &&
        other.farmclubId == farmclubId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, farmclubId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin MyFarmclubInfoModelRef
    on AutoDisposeFutureProviderRef<MyFarmclubInfoModel> {
  /// The parameter `farmclubId` of this provider.
  int? get farmclubId;
}

class _MyFarmclubInfoModelProviderElement
    extends AutoDisposeFutureProviderElement<MyFarmclubInfoModel>
    with MyFarmclubInfoModelRef {
  _MyFarmclubInfoModelProviderElement(super.provider);

  @override
  int? get farmclubId => (origin as MyFarmclubInfoModelProvider).farmclubId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
