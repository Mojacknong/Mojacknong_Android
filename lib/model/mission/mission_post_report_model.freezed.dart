// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mission_post_report_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MissionPostReportModel _$MissionPostReportModelFromJson(
    Map<String, dynamic> json) {
  return _MissionPostReportModel.fromJson(json);
}

/// @nodoc
mixin _$MissionPostReportModel {
  int get missionPostId => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MissionPostReportModelCopyWith<MissionPostReportModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MissionPostReportModelCopyWith<$Res> {
  factory $MissionPostReportModelCopyWith(MissionPostReportModel value,
          $Res Function(MissionPostReportModel) then) =
      _$MissionPostReportModelCopyWithImpl<$Res, MissionPostReportModel>;
  @useResult
  $Res call({int missionPostId, String reason});
}

/// @nodoc
class _$MissionPostReportModelCopyWithImpl<$Res,
        $Val extends MissionPostReportModel>
    implements $MissionPostReportModelCopyWith<$Res> {
  _$MissionPostReportModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPostId = null,
    Object? reason = null,
  }) {
    return _then(_value.copyWith(
      missionPostId: null == missionPostId
          ? _value.missionPostId
          : missionPostId // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MissionPostReportModelImplCopyWith<$Res>
    implements $MissionPostReportModelCopyWith<$Res> {
  factory _$$MissionPostReportModelImplCopyWith(
          _$MissionPostReportModelImpl value,
          $Res Function(_$MissionPostReportModelImpl) then) =
      __$$MissionPostReportModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int missionPostId, String reason});
}

/// @nodoc
class __$$MissionPostReportModelImplCopyWithImpl<$Res>
    extends _$MissionPostReportModelCopyWithImpl<$Res,
        _$MissionPostReportModelImpl>
    implements _$$MissionPostReportModelImplCopyWith<$Res> {
  __$$MissionPostReportModelImplCopyWithImpl(
      _$MissionPostReportModelImpl _value,
      $Res Function(_$MissionPostReportModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? missionPostId = null,
    Object? reason = null,
  }) {
    return _then(_$MissionPostReportModelImpl(
      missionPostId: null == missionPostId
          ? _value.missionPostId
          : missionPostId // ignore: cast_nullable_to_non_nullable
              as int,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MissionPostReportModelImpl implements _MissionPostReportModel {
  const _$MissionPostReportModelImpl(
      {required this.missionPostId, required this.reason});

  factory _$MissionPostReportModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MissionPostReportModelImplFromJson(json);

  @override
  final int missionPostId;
  @override
  final String reason;

  @override
  String toString() {
    return 'MissionPostReportModel(missionPostId: $missionPostId, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MissionPostReportModelImpl &&
            (identical(other.missionPostId, missionPostId) ||
                other.missionPostId == missionPostId) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, missionPostId, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MissionPostReportModelImplCopyWith<_$MissionPostReportModelImpl>
      get copyWith => __$$MissionPostReportModelImplCopyWithImpl<
          _$MissionPostReportModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MissionPostReportModelImplToJson(
      this,
    );
  }
}

abstract class _MissionPostReportModel implements MissionPostReportModel {
  const factory _MissionPostReportModel(
      {required final int missionPostId,
      required final String reason}) = _$MissionPostReportModelImpl;

  factory _MissionPostReportModel.fromJson(Map<String, dynamic> json) =
      _$MissionPostReportModelImpl.fromJson;

  @override
  int get missionPostId;
  @override
  String get reason;
  @override
  @JsonKey(ignore: true)
  _$$MissionPostReportModelImplCopyWith<_$MissionPostReportModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
