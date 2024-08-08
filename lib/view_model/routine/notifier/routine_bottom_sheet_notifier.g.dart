// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routine_bottom_sheet_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routineBottomSheetNotifierHash() =>
    r'2476ed9988a83bdb1a2cac00415ad46860f57681';

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

abstract class _$RoutineBottomSheetNotifier
    extends BuildlessAutoDisposeAsyncNotifier<RoutineModel> {
  late final int? myVeggieId;
  late final String? routineName;
  late final int? period;
  late final bool? isSwitch;

  FutureOr<RoutineModel> build({
    int? myVeggieId,
    String? routineName,
    int? period,
    bool? isSwitch,
  });
}

/// See also [RoutineBottomSheetNotifier].
@ProviderFor(RoutineBottomSheetNotifier)
const routineBottomSheetNotifierProvider = RoutineBottomSheetNotifierFamily();

/// See also [RoutineBottomSheetNotifier].
class RoutineBottomSheetNotifierFamily
    extends Family<AsyncValue<RoutineModel>> {
  /// See also [RoutineBottomSheetNotifier].
  const RoutineBottomSheetNotifierFamily();

  /// See also [RoutineBottomSheetNotifier].
  RoutineBottomSheetNotifierProvider call({
    int? myVeggieId,
    String? routineName,
    int? period,
    bool? isSwitch,
  }) {
    return RoutineBottomSheetNotifierProvider(
      myVeggieId: myVeggieId,
      routineName: routineName,
      period: period,
      isSwitch: isSwitch,
    );
  }

  @override
  RoutineBottomSheetNotifierProvider getProviderOverride(
    covariant RoutineBottomSheetNotifierProvider provider,
  ) {
    return call(
      myVeggieId: provider.myVeggieId,
      routineName: provider.routineName,
      period: provider.period,
      isSwitch: provider.isSwitch,
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
  String? get name => r'routineBottomSheetNotifierProvider';
}

/// See also [RoutineBottomSheetNotifier].
class RoutineBottomSheetNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<RoutineBottomSheetNotifier,
        RoutineModel> {
  /// See also [RoutineBottomSheetNotifier].
  RoutineBottomSheetNotifierProvider({
    int? myVeggieId,
    String? routineName,
    int? period,
    bool? isSwitch,
  }) : this._internal(
          () => RoutineBottomSheetNotifier()
            ..myVeggieId = myVeggieId
            ..routineName = routineName
            ..period = period
            ..isSwitch = isSwitch,
          from: routineBottomSheetNotifierProvider,
          name: r'routineBottomSheetNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$routineBottomSheetNotifierHash,
          dependencies: RoutineBottomSheetNotifierFamily._dependencies,
          allTransitiveDependencies:
              RoutineBottomSheetNotifierFamily._allTransitiveDependencies,
          myVeggieId: myVeggieId,
          routineName: routineName,
          period: period,
          isSwitch: isSwitch,
        );

  RoutineBottomSheetNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.myVeggieId,
    required this.routineName,
    required this.period,
    required this.isSwitch,
  }) : super.internal();

  final int? myVeggieId;
  final String? routineName;
  final int? period;
  final bool? isSwitch;

  @override
  FutureOr<RoutineModel> runNotifierBuild(
    covariant RoutineBottomSheetNotifier notifier,
  ) {
    return notifier.build(
      myVeggieId: myVeggieId,
      routineName: routineName,
      period: period,
      isSwitch: isSwitch,
    );
  }

  @override
  Override overrideWith(RoutineBottomSheetNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: RoutineBottomSheetNotifierProvider._internal(
        () => create()
          ..myVeggieId = myVeggieId
          ..routineName = routineName
          ..period = period
          ..isSwitch = isSwitch,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        myVeggieId: myVeggieId,
        routineName: routineName,
        period: period,
        isSwitch: isSwitch,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<RoutineBottomSheetNotifier,
      RoutineModel> createElement() {
    return _RoutineBottomSheetNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RoutineBottomSheetNotifierProvider &&
        other.myVeggieId == myVeggieId &&
        other.routineName == routineName &&
        other.period == period &&
        other.isSwitch == isSwitch;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, myVeggieId.hashCode);
    hash = _SystemHash.combine(hash, routineName.hashCode);
    hash = _SystemHash.combine(hash, period.hashCode);
    hash = _SystemHash.combine(hash, isSwitch.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RoutineBottomSheetNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<RoutineModel> {
  /// The parameter `myVeggieId` of this provider.
  int? get myVeggieId;

  /// The parameter `routineName` of this provider.
  String? get routineName;

  /// The parameter `period` of this provider.
  int? get period;

  /// The parameter `isSwitch` of this provider.
  bool? get isSwitch;
}

class _RoutineBottomSheetNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<RoutineBottomSheetNotifier,
        RoutineModel> with RoutineBottomSheetNotifierRef {
  _RoutineBottomSheetNotifierProviderElement(super.provider);

  @override
  int? get myVeggieId =>
      (origin as RoutineBottomSheetNotifierProvider).myVeggieId;
  @override
  String? get routineName =>
      (origin as RoutineBottomSheetNotifierProvider).routineName;
  @override
  int? get period => (origin as RoutineBottomSheetNotifierProvider).period;
  @override
  bool? get isSwitch => (origin as RoutineBottomSheetNotifierProvider).isSwitch;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
