// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_farmclub_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserFarmclubHistoryModel _$UserFarmclubHistoryModelFromJson(
    Map<String, dynamic> json) {
  return _UserFarmclubHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$UserFarmclubHistoryModel {
  int get farmClubHistoryCount => throw _privateConstructorUsedError;
  List<FarmclubHistoryIconModel> get farmClubHistoryIcons =>
      throw _privateConstructorUsedError;

  /// Serializes this UserFarmclubHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserFarmclubHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserFarmclubHistoryModelCopyWith<UserFarmclubHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFarmclubHistoryModelCopyWith<$Res> {
  factory $UserFarmclubHistoryModelCopyWith(UserFarmclubHistoryModel value,
          $Res Function(UserFarmclubHistoryModel) then) =
      _$UserFarmclubHistoryModelCopyWithImpl<$Res, UserFarmclubHistoryModel>;
  @useResult
  $Res call(
      {int farmClubHistoryCount,
      List<FarmclubHistoryIconModel> farmClubHistoryIcons});
}

/// @nodoc
class _$UserFarmclubHistoryModelCopyWithImpl<$Res,
        $Val extends UserFarmclubHistoryModel>
    implements $UserFarmclubHistoryModelCopyWith<$Res> {
  _$UserFarmclubHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserFarmclubHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmClubHistoryCount = null,
    Object? farmClubHistoryIcons = null,
  }) {
    return _then(_value.copyWith(
      farmClubHistoryCount: null == farmClubHistoryCount
          ? _value.farmClubHistoryCount
          : farmClubHistoryCount // ignore: cast_nullable_to_non_nullable
              as int,
      farmClubHistoryIcons: null == farmClubHistoryIcons
          ? _value.farmClubHistoryIcons
          : farmClubHistoryIcons // ignore: cast_nullable_to_non_nullable
              as List<FarmclubHistoryIconModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserFarmclubHistoryModelImplCopyWith<$Res>
    implements $UserFarmclubHistoryModelCopyWith<$Res> {
  factory _$$UserFarmclubHistoryModelImplCopyWith(
          _$UserFarmclubHistoryModelImpl value,
          $Res Function(_$UserFarmclubHistoryModelImpl) then) =
      __$$UserFarmclubHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int farmClubHistoryCount,
      List<FarmclubHistoryIconModel> farmClubHistoryIcons});
}

/// @nodoc
class __$$UserFarmclubHistoryModelImplCopyWithImpl<$Res>
    extends _$UserFarmclubHistoryModelCopyWithImpl<$Res,
        _$UserFarmclubHistoryModelImpl>
    implements _$$UserFarmclubHistoryModelImplCopyWith<$Res> {
  __$$UserFarmclubHistoryModelImplCopyWithImpl(
      _$UserFarmclubHistoryModelImpl _value,
      $Res Function(_$UserFarmclubHistoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserFarmclubHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? farmClubHistoryCount = null,
    Object? farmClubHistoryIcons = null,
  }) {
    return _then(_$UserFarmclubHistoryModelImpl(
      farmClubHistoryCount: null == farmClubHistoryCount
          ? _value.farmClubHistoryCount
          : farmClubHistoryCount // ignore: cast_nullable_to_non_nullable
              as int,
      farmClubHistoryIcons: null == farmClubHistoryIcons
          ? _value._farmClubHistoryIcons
          : farmClubHistoryIcons // ignore: cast_nullable_to_non_nullable
              as List<FarmclubHistoryIconModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserFarmclubHistoryModelImpl implements _UserFarmclubHistoryModel {
  const _$UserFarmclubHistoryModelImpl(
      {required this.farmClubHistoryCount,
      required final List<FarmclubHistoryIconModel> farmClubHistoryIcons})
      : _farmClubHistoryIcons = farmClubHistoryIcons;

  factory _$UserFarmclubHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserFarmclubHistoryModelImplFromJson(json);

  @override
  final int farmClubHistoryCount;
  final List<FarmclubHistoryIconModel> _farmClubHistoryIcons;
  @override
  List<FarmclubHistoryIconModel> get farmClubHistoryIcons {
    if (_farmClubHistoryIcons is EqualUnmodifiableListView)
      return _farmClubHistoryIcons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_farmClubHistoryIcons);
  }

  @override
  String toString() {
    return 'UserFarmclubHistoryModel(farmClubHistoryCount: $farmClubHistoryCount, farmClubHistoryIcons: $farmClubHistoryIcons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFarmclubHistoryModelImpl &&
            (identical(other.farmClubHistoryCount, farmClubHistoryCount) ||
                other.farmClubHistoryCount == farmClubHistoryCount) &&
            const DeepCollectionEquality()
                .equals(other._farmClubHistoryIcons, _farmClubHistoryIcons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, farmClubHistoryCount,
      const DeepCollectionEquality().hash(_farmClubHistoryIcons));

  /// Create a copy of UserFarmclubHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFarmclubHistoryModelImplCopyWith<_$UserFarmclubHistoryModelImpl>
      get copyWith => __$$UserFarmclubHistoryModelImplCopyWithImpl<
          _$UserFarmclubHistoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserFarmclubHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _UserFarmclubHistoryModel implements UserFarmclubHistoryModel {
  const factory _UserFarmclubHistoryModel(
          {required final int farmClubHistoryCount,
          required final List<FarmclubHistoryIconModel> farmClubHistoryIcons}) =
      _$UserFarmclubHistoryModelImpl;

  factory _UserFarmclubHistoryModel.fromJson(Map<String, dynamic> json) =
      _$UserFarmclubHistoryModelImpl.fromJson;

  @override
  int get farmClubHistoryCount;
  @override
  List<FarmclubHistoryIconModel> get farmClubHistoryIcons;

  /// Create a copy of UserFarmclubHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserFarmclubHistoryModelImplCopyWith<_$UserFarmclubHistoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
