// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_farmclub_certification_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$myFarmclubCertificationModelHash() =>
    r'008c48f2a823deffa5ee6be9c8d1ab106f7e7fa0';

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

/// See also [myFarmclubCertificationModel].
@ProviderFor(myFarmclubCertificationModel)
const myFarmclubCertificationModelProvider =
    MyFarmclubCertificationModelFamily();

/// See also [myFarmclubCertificationModel].
class MyFarmclubCertificationModelFamily
    extends Family<AsyncValue<MyFarmclubCertificationModel>> {
  /// See also [myFarmclubCertificationModel].
  const MyFarmclubCertificationModelFamily();

  /// See also [myFarmclubCertificationModel].
  MyFarmclubCertificationModelProvider call(
    String id,
  ) {
    return MyFarmclubCertificationModelProvider(
      id,
    );
  }

  @override
  MyFarmclubCertificationModelProvider getProviderOverride(
    covariant MyFarmclubCertificationModelProvider provider,
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
  String? get name => r'myFarmclubCertificationModelProvider';
}

/// See also [myFarmclubCertificationModel].
class MyFarmclubCertificationModelProvider
    extends AutoDisposeFutureProvider<MyFarmclubCertificationModel> {
  /// See also [myFarmclubCertificationModel].
  MyFarmclubCertificationModelProvider(
    String id,
  ) : this._internal(
          (ref) => myFarmclubCertificationModel(
            ref as MyFarmclubCertificationModelRef,
            id,
          ),
          from: myFarmclubCertificationModelProvider,
          name: r'myFarmclubCertificationModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$myFarmclubCertificationModelHash,
          dependencies: MyFarmclubCertificationModelFamily._dependencies,
          allTransitiveDependencies:
              MyFarmclubCertificationModelFamily._allTransitiveDependencies,
          id: id,
        );

  MyFarmclubCertificationModelProvider._internal(
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
    FutureOr<MyFarmclubCertificationModel> Function(
            MyFarmclubCertificationModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: MyFarmclubCertificationModelProvider._internal(
        (ref) => create(ref as MyFarmclubCertificationModelRef),
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
  AutoDisposeFutureProviderElement<MyFarmclubCertificationModel>
      createElement() {
    return _MyFarmclubCertificationModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MyFarmclubCertificationModelProvider && other.id == id;
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
mixin MyFarmclubCertificationModelRef
    on AutoDisposeFutureProviderRef<MyFarmclubCertificationModel> {
  /// The parameter `id` of this provider.
  String get id;
}

class _MyFarmclubCertificationModelProviderElement
    extends AutoDisposeFutureProviderElement<MyFarmclubCertificationModel>
    with MyFarmclubCertificationModelRef {
  _MyFarmclubCertificationModelProviderElement(super.provider);

  @override
  String get id => (origin as MyFarmclubCertificationModelProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
