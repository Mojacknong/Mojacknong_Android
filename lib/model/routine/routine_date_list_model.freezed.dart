// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_date_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutineDateListModel _$RoutineDateListModelFromJson(Map<String, dynamic> json) {
  return _RoutineDateListModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineDateListModel {
  String get nickname => throw _privateConstructorUsedError;
  String get veggieName => throw _privateConstructorUsedError;
  List<MyVeggieRoutineInfoModel> get myVeggieRoutineList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutineDateListModelCopyWith<RoutineDateListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineDateListModelCopyWith<$Res> {
  factory $RoutineDateListModelCopyWith(RoutineDateListModel value,
          $Res Function(RoutineDateListModel) then) =
      _$RoutineDateListModelCopyWithImpl<$Res, RoutineDateListModel>;
  @useResult
  $Res call(
      {String nickname,
      String veggieName,
      List<MyVeggieRoutineInfoModel> myVeggieRoutineList});
}

/// @nodoc
class _$RoutineDateListModelCopyWithImpl<$Res,
        $Val extends RoutineDateListModel>
    implements $RoutineDateListModelCopyWith<$Res> {
  _$RoutineDateListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? veggieName = null,
    Object? myVeggieRoutineList = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      veggieName: null == veggieName
          ? _value.veggieName
          : veggieName // ignore: cast_nullable_to_non_nullable
              as String,
      myVeggieRoutineList: null == myVeggieRoutineList
          ? _value.myVeggieRoutineList
          : myVeggieRoutineList // ignore: cast_nullable_to_non_nullable
              as List<MyVeggieRoutineInfoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineDateListModelImplCopyWith<$Res>
    implements $RoutineDateListModelCopyWith<$Res> {
  factory _$$RoutineDateListModelImplCopyWith(_$RoutineDateListModelImpl value,
          $Res Function(_$RoutineDateListModelImpl) then) =
      __$$RoutineDateListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickname,
      String veggieName,
      List<MyVeggieRoutineInfoModel> myVeggieRoutineList});
}

/// @nodoc
class __$$RoutineDateListModelImplCopyWithImpl<$Res>
    extends _$RoutineDateListModelCopyWithImpl<$Res, _$RoutineDateListModelImpl>
    implements _$$RoutineDateListModelImplCopyWith<$Res> {
  __$$RoutineDateListModelImplCopyWithImpl(_$RoutineDateListModelImpl _value,
      $Res Function(_$RoutineDateListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? veggieName = null,
    Object? myVeggieRoutineList = null,
  }) {
    return _then(_$RoutineDateListModelImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      veggieName: null == veggieName
          ? _value.veggieName
          : veggieName // ignore: cast_nullable_to_non_nullable
              as String,
      myVeggieRoutineList: null == myVeggieRoutineList
          ? _value._myVeggieRoutineList
          : myVeggieRoutineList // ignore: cast_nullable_to_non_nullable
              as List<MyVeggieRoutineInfoModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineDateListModelImpl implements _RoutineDateListModel {
  const _$RoutineDateListModelImpl(
      {required this.nickname,
      required this.veggieName,
      required final List<MyVeggieRoutineInfoModel> myVeggieRoutineList})
      : _myVeggieRoutineList = myVeggieRoutineList;

  factory _$RoutineDateListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineDateListModelImplFromJson(json);

  @override
  final String nickname;
  @override
  final String veggieName;
  final List<MyVeggieRoutineInfoModel> _myVeggieRoutineList;
  @override
  List<MyVeggieRoutineInfoModel> get myVeggieRoutineList {
    if (_myVeggieRoutineList is EqualUnmodifiableListView)
      return _myVeggieRoutineList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_myVeggieRoutineList);
  }

  @override
  String toString() {
    return 'RoutineDateListModel(nickname: $nickname, veggieName: $veggieName, myVeggieRoutineList: $myVeggieRoutineList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineDateListModelImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.veggieName, veggieName) ||
                other.veggieName == veggieName) &&
            const DeepCollectionEquality()
                .equals(other._myVeggieRoutineList, _myVeggieRoutineList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, veggieName,
      const DeepCollectionEquality().hash(_myVeggieRoutineList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineDateListModelImplCopyWith<_$RoutineDateListModelImpl>
      get copyWith =>
          __$$RoutineDateListModelImplCopyWithImpl<_$RoutineDateListModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineDateListModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineDateListModel implements RoutineDateListModel {
  const factory _RoutineDateListModel(
          {required final String nickname,
          required final String veggieName,
          required final List<MyVeggieRoutineInfoModel> myVeggieRoutineList}) =
      _$RoutineDateListModelImpl;

  factory _RoutineDateListModel.fromJson(Map<String, dynamic> json) =
      _$RoutineDateListModelImpl.fromJson;

  @override
  String get nickname;
  @override
  String get veggieName;
  @override
  List<MyVeggieRoutineInfoModel> get myVeggieRoutineList;
  @override
  @JsonKey(ignore: true)
  _$$RoutineDateListModelImplCopyWith<_$RoutineDateListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
