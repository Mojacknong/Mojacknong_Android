// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_veggie_routine_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyVeggieRoutineInfoModel _$MyVeggieRoutineInfoModelFromJson(
    Map<String, dynamic> json) {
  return _MyVeggieRoutineInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MyVeggieRoutineInfoModel {
  bool get complete => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;
  int get routineId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyVeggieRoutineInfoModelCopyWith<MyVeggieRoutineInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVeggieRoutineInfoModelCopyWith<$Res> {
  factory $MyVeggieRoutineInfoModelCopyWith(MyVeggieRoutineInfoModel value,
          $Res Function(MyVeggieRoutineInfoModel) then) =
      _$MyVeggieRoutineInfoModelCopyWithImpl<$Res, MyVeggieRoutineInfoModel>;
  @useResult
  $Res call({bool complete, String content, int period, int routineId});
}

/// @nodoc
class _$MyVeggieRoutineInfoModelCopyWithImpl<$Res,
        $Val extends MyVeggieRoutineInfoModel>
    implements $MyVeggieRoutineInfoModelCopyWith<$Res> {
  _$MyVeggieRoutineInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complete = null,
    Object? content = null,
    Object? period = null,
    Object? routineId = null,
  }) {
    return _then(_value.copyWith(
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyVeggieRoutineInfoModelImplCopyWith<$Res>
    implements $MyVeggieRoutineInfoModelCopyWith<$Res> {
  factory _$$MyVeggieRoutineInfoModelImplCopyWith(
          _$MyVeggieRoutineInfoModelImpl value,
          $Res Function(_$MyVeggieRoutineInfoModelImpl) then) =
      __$$MyVeggieRoutineInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool complete, String content, int period, int routineId});
}

/// @nodoc
class __$$MyVeggieRoutineInfoModelImplCopyWithImpl<$Res>
    extends _$MyVeggieRoutineInfoModelCopyWithImpl<$Res,
        _$MyVeggieRoutineInfoModelImpl>
    implements _$$MyVeggieRoutineInfoModelImplCopyWith<$Res> {
  __$$MyVeggieRoutineInfoModelImplCopyWithImpl(
      _$MyVeggieRoutineInfoModelImpl _value,
      $Res Function(_$MyVeggieRoutineInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complete = null,
    Object? content = null,
    Object? period = null,
    Object? routineId = null,
  }) {
    return _then(_$MyVeggieRoutineInfoModelImpl(
      complete: null == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      routineId: null == routineId
          ? _value.routineId
          : routineId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyVeggieRoutineInfoModelImpl implements _MyVeggieRoutineInfoModel {
  const _$MyVeggieRoutineInfoModelImpl(
      {required this.complete,
      required this.content,
      required this.period,
      required this.routineId});

  factory _$MyVeggieRoutineInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyVeggieRoutineInfoModelImplFromJson(json);

  @override
  final bool complete;
  @override
  final String content;
  @override
  final int period;
  @override
  final int routineId;

  @override
  String toString() {
    return 'MyVeggieRoutineInfoModel(complete: $complete, content: $content, period: $period, routineId: $routineId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyVeggieRoutineInfoModelImpl &&
            (identical(other.complete, complete) ||
                other.complete == complete) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.routineId, routineId) ||
                other.routineId == routineId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, complete, content, period, routineId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyVeggieRoutineInfoModelImplCopyWith<_$MyVeggieRoutineInfoModelImpl>
      get copyWith => __$$MyVeggieRoutineInfoModelImplCopyWithImpl<
          _$MyVeggieRoutineInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyVeggieRoutineInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MyVeggieRoutineInfoModel implements MyVeggieRoutineInfoModel {
  const factory _MyVeggieRoutineInfoModel(
      {required final bool complete,
      required final String content,
      required final int period,
      required final int routineId}) = _$MyVeggieRoutineInfoModelImpl;

  factory _MyVeggieRoutineInfoModel.fromJson(Map<String, dynamic> json) =
      _$MyVeggieRoutineInfoModelImpl.fromJson;

  @override
  bool get complete;
  @override
  String get content;
  @override
  int get period;
  @override
  int get routineId;
  @override
  @JsonKey(ignore: true)
  _$$MyVeggieRoutineInfoModelImplCopyWith<_$MyVeggieRoutineInfoModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
