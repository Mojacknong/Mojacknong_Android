// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmclub_sign_up_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchFarmclubDetailModelHash() =>
    r'6692bac89f75eaac7106fb6731f3f0fae5d16c63';

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

/// See also [searchFarmclubDetailModel].
@ProviderFor(searchFarmclubDetailModel)
const searchFarmclubDetailModelProvider = SearchFarmclubDetailModelFamily();

/// See also [searchFarmclubDetailModel].
class SearchFarmclubDetailModelFamily
    extends Family<AsyncValue<SearchFarmclubDetailModel>> {
  /// See also [searchFarmclubDetailModel].
  const SearchFarmclubDetailModelFamily();

  /// See also [searchFarmclubDetailModel].
  SearchFarmclubDetailModelProvider call(
    int id,
  ) {
    return SearchFarmclubDetailModelProvider(
      id,
    );
  }

  @override
  SearchFarmclubDetailModelProvider getProviderOverride(
    covariant SearchFarmclubDetailModelProvider provider,
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
  String? get name => r'searchFarmclubDetailModelProvider';
}

/// See also [searchFarmclubDetailModel].
class SearchFarmclubDetailModelProvider
    extends AutoDisposeFutureProvider<SearchFarmclubDetailModel> {
  /// See also [searchFarmclubDetailModel].
  SearchFarmclubDetailModelProvider(
    int id,
  ) : this._internal(
          (ref) => searchFarmclubDetailModel(
            ref as SearchFarmclubDetailModelRef,
            id,
          ),
          from: searchFarmclubDetailModelProvider,
          name: r'searchFarmclubDetailModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchFarmclubDetailModelHash,
          dependencies: SearchFarmclubDetailModelFamily._dependencies,
          allTransitiveDependencies:
              SearchFarmclubDetailModelFamily._allTransitiveDependencies,
          id: id,
        );

  SearchFarmclubDetailModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final int id;

  @override
  Override overrideWith(
    FutureOr<SearchFarmclubDetailModel> Function(
            SearchFarmclubDetailModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchFarmclubDetailModelProvider._internal(
        (ref) => create(ref as SearchFarmclubDetailModelRef),
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
  AutoDisposeFutureProviderElement<SearchFarmclubDetailModel> createElement() {
    return _SearchFarmclubDetailModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchFarmclubDetailModelProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchFarmclubDetailModelRef
    on AutoDisposeFutureProviderRef<SearchFarmclubDetailModel> {
  /// The parameter `id` of this provider.
  int get id;
}

class _SearchFarmclubDetailModelProviderElement
    extends AutoDisposeFutureProviderElement<SearchFarmclubDetailModel>
    with SearchFarmclubDetailModelRef {
  _SearchFarmclubDetailModelProviderElement(super.provider);

  @override
  int get id => (origin as SearchFarmclubDetailModelProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
