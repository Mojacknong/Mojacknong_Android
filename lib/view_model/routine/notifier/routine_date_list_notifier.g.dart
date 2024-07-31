// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_date_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routineDateListModelHash() =>
    r'ca28367a6ce4cd8037287242185e592fc93120fa';

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

/// See also [routineDateListModel].
@ProviderFor(routineDateListModel)
const routineDateListModelProvider = RoutineDateListModelFamily();

/// See also [routineDateListModel].
class RoutineDateListModelFamily
    extends Family<AsyncValue<List<RoutineDateListModel>>> {
  /// See also [routineDateListModel].
  const RoutineDateListModelFamily();

  /// See also [routineDateListModel].
  RoutineDateListModelProvider call(
    String date,
  ) {
    return RoutineDateListModelProvider(
      date,
    );
  }

  @override
  RoutineDateListModelProvider getProviderOverride(
    covariant RoutineDateListModelProvider provider,
  ) {
    return call(
      provider.date,
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
  String? get name => r'routineDateListModelProvider';
}

/// See also [routineDateListModel].
class RoutineDateListModelProvider
    extends AutoDisposeFutureProvider<List<RoutineDateListModel>> {
  /// See also [routineDateListModel].
  RoutineDateListModelProvider(
    String date,
  ) : this._internal(
          (ref) => routineDateListModel(
            ref as RoutineDateListModelRef,
            date,
          ),
          from: routineDateListModelProvider,
          name: r'routineDateListModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$routineDateListModelHash,
          dependencies: RoutineDateListModelFamily._dependencies,
          allTransitiveDependencies:
              RoutineDateListModelFamily._allTransitiveDependencies,
          date: date,
        );

  RoutineDateListModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.date,
  }) : super.internal();

  final String date;

  @override
  Override overrideWith(
    FutureOr<List<RoutineDateListModel>> Function(
            RoutineDateListModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RoutineDateListModelProvider._internal(
        (ref) => create(ref as RoutineDateListModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<RoutineDateListModel>> createElement() {
    return _RoutineDateListModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RoutineDateListModelProvider && other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RoutineDateListModelRef
    on AutoDisposeFutureProviderRef<List<RoutineDateListModel>> {
  /// The parameter `date` of this provider.
  String get date;
}

class _RoutineDateListModelProviderElement
    extends AutoDisposeFutureProviderElement<List<RoutineDateListModel>>
    with RoutineDateListModelRef {
  _RoutineDateListModelProviderElement(super.provider);

  @override
  String get date => (origin as RoutineDateListModelProvider).date;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
