// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_month_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutineMonthListModel _$RoutineMonthListModelFromJson(
    Map<String, dynamic> json) {
  return _RoutineMonthListModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineMonthListModel {
  List<String> get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutineMonthListModelCopyWith<RoutineMonthListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineMonthListModelCopyWith<$Res> {
  factory $RoutineMonthListModelCopyWith(RoutineMonthListModel value,
          $Res Function(RoutineMonthListModel) then) =
      _$RoutineMonthListModelCopyWithImpl<$Res, RoutineMonthListModel>;
  @useResult
  $Res call({List<String> date});
}

/// @nodoc
class _$RoutineMonthListModelCopyWithImpl<$Res,
        $Val extends RoutineMonthListModel>
    implements $RoutineMonthListModelCopyWith<$Res> {
  _$RoutineMonthListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineMonthListModelImplCopyWith<$Res>
    implements $RoutineMonthListModelCopyWith<$Res> {
  factory _$$RoutineMonthListModelImplCopyWith(
          _$RoutineMonthListModelImpl value,
          $Res Function(_$RoutineMonthListModelImpl) then) =
      __$$RoutineMonthListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> date});
}

/// @nodoc
class __$$RoutineMonthListModelImplCopyWithImpl<$Res>
    extends _$RoutineMonthListModelCopyWithImpl<$Res,
        _$RoutineMonthListModelImpl>
    implements _$$RoutineMonthListModelImplCopyWith<$Res> {
  __$$RoutineMonthListModelImplCopyWithImpl(_$RoutineMonthListModelImpl _value,
      $Res Function(_$RoutineMonthListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$RoutineMonthListModelImpl(
      date: null == date
          ? _value._date
          : date // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineMonthListModelImpl implements _RoutineMonthListModel {
  const _$RoutineMonthListModelImpl({required final List<String> date})
      : _date = date;

  factory _$RoutineMonthListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineMonthListModelImplFromJson(json);

  final List<String> _date;
  @override
  List<String> get date {
    if (_date is EqualUnmodifiableListView) return _date;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_date);
  }

  @override
  String toString() {
    return 'RoutineMonthListModel(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineMonthListModelImpl &&
            const DeepCollectionEquality().equals(other._date, _date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_date));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineMonthListModelImplCopyWith<_$RoutineMonthListModelImpl>
      get copyWith => __$$RoutineMonthListModelImplCopyWithImpl<
          _$RoutineMonthListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineMonthListModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineMonthListModel implements RoutineMonthListModel {
  const factory _RoutineMonthListModel({required final List<String> date}) =
      _$RoutineMonthListModelImpl;

  factory _RoutineMonthListModel.fromJson(Map<String, dynamic> json) =
      _$RoutineMonthListModelImpl.fromJson;

  @override
  List<String> get date;
  @override
  @JsonKey(ignore: true)
  _$$RoutineMonthListModelImplCopyWith<_$RoutineMonthListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
