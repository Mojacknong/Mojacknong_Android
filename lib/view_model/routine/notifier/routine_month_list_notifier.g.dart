// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_month_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routineMonthListModelHash() =>
    r'87c5733f2ce90865e88c26a14f42212441919510';

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

/// See also [routineMonthListModel].
@ProviderFor(routineMonthListModel)
const routineMonthListModelProvider = RoutineMonthListModelFamily();

/// See also [routineMonthListModel].
class RoutineMonthListModelFamily
    extends Family<AsyncValue<RoutineMonthListModel>> {
  /// See also [routineMonthListModel].
  const RoutineMonthListModelFamily();

  /// See also [routineMonthListModel].
  RoutineMonthListModelProvider call(
    String month,
  ) {
    return RoutineMonthListModelProvider(
      month,
    );
  }

  @override
  RoutineMonthListModelProvider getProviderOverride(
    covariant RoutineMonthListModelProvider provider,
  ) {
    return call(
      provider.month,
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
  String? get name => r'routineMonthListModelProvider';
}

/// See also [routineMonthListModel].
class RoutineMonthListModelProvider
    extends AutoDisposeFutureProvider<RoutineMonthListModel> {
  /// See also [routineMonthListModel].
  RoutineMonthListModelProvider(
    String month,
  ) : this._internal(
          (ref) => routineMonthListModel(
            ref as RoutineMonthListModelRef,
            month,
          ),
          from: routineMonthListModelProvider,
          name: r'routineMonthListModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$routineMonthListModelHash,
          dependencies: RoutineMonthListModelFamily._dependencies,
          allTransitiveDependencies:
              RoutineMonthListModelFamily._allTransitiveDependencies,
          month: month,
        );

  RoutineMonthListModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.month,
  }) : super.internal();

  final String month;

  @override
  Override overrideWith(
    FutureOr<RoutineMonthListModel> Function(RoutineMonthListModelRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RoutineMonthListModelProvider._internal(
        (ref) => create(ref as RoutineMonthListModelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        month: month,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<RoutineMonthListModel> createElement() {
    return _RoutineMonthListModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RoutineMonthListModelProvider && other.month == month;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, month.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RoutineMonthListModelRef
    on AutoDisposeFutureProviderRef<RoutineMonthListModel> {
  /// The parameter `month` of this provider.
  String get month;
}

class _RoutineMonthListModelProviderElement
    extends AutoDisposeFutureProviderElement<RoutineMonthListModel>
    with RoutineMonthListModelRef {
  _RoutineMonthListModelProviderElement(super.provider);

  @override
  String get month => (origin as RoutineMonthListModelProvider).month;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
