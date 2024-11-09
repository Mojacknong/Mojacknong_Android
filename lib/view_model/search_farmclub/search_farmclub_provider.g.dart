// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_farmclub_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchFarmclubsResultHash() =>
    r'a940cec94825b3ffd281552f7a70c525c97a2df9';

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

/// See also [searchFarmclubsResult].
@ProviderFor(searchFarmclubsResult)
const searchFarmclubsResultProvider = SearchFarmclubsResultFamily();

/// See also [searchFarmclubsResult].
class SearchFarmclubsResultFamily
    extends Family<AsyncValue<List<SearchFarmclubInfoModel>?>> {
  /// See also [searchFarmclubsResult].
  const SearchFarmclubsResultFamily();

  /// See also [searchFarmclubsResult].
  SearchFarmclubsResultProvider call(
    String keyword,
  ) {
    return SearchFarmclubsResultProvider(
      keyword,
    );
  }

  @override
  SearchFarmclubsResultProvider getProviderOverride(
    covariant SearchFarmclubsResultProvider provider,
  ) {
    return call(
      provider.keyword,
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
  String? get name => r'searchFarmclubsResultProvider';
}

/// See also [searchFarmclubsResult].
class SearchFarmclubsResultProvider
    extends AutoDisposeFutureProvider<List<SearchFarmclubInfoModel>?> {
  /// See also [searchFarmclubsResult].
  SearchFarmclubsResultProvider(
    String keyword,
  ) : this._internal(
          (ref) => searchFarmclubsResult(
            ref as SearchFarmclubsResultRef,
            keyword,
          ),
          from: searchFarmclubsResultProvider,
          name: r'searchFarmclubsResultProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchFarmclubsResultHash,
          dependencies: SearchFarmclubsResultFamily._dependencies,
          allTransitiveDependencies:
              SearchFarmclubsResultFamily._allTransitiveDependencies,
          keyword: keyword,
        );

  SearchFarmclubsResultProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.keyword,
  }) : super.internal();

  final String keyword;

  @override
  Override overrideWith(
    FutureOr<List<SearchFarmclubInfoModel>?> Function(
            SearchFarmclubsResultRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchFarmclubsResultProvider._internal(
        (ref) => create(ref as SearchFarmclubsResultRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        keyword: keyword,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<SearchFarmclubInfoModel>?>
      createElement() {
    return _SearchFarmclubsResultProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchFarmclubsResultProvider && other.keyword == keyword;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, keyword.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchFarmclubsResultRef
    on AutoDisposeFutureProviderRef<List<SearchFarmclubInfoModel>?> {
  /// The parameter `keyword` of this provider.
  String get keyword;
}

class _SearchFarmclubsResultProviderElement
    extends AutoDisposeFutureProviderElement<List<SearchFarmclubInfoModel>?>
    with SearchFarmclubsResultRef {
  _SearchFarmclubsResultProviderElement(super.provider);

  @override
  String get keyword => (origin as SearchFarmclubsResultProvider).keyword;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
