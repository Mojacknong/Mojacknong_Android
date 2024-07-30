// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutineListModel _$RoutineListModelFromJson(Map<String, dynamic> json) {
  return _RoutineListModel.fromJson(json);
}

/// @nodoc
mixin _$RoutineListModel {
  String get nickname => throw _privateConstructorUsedError;
  String get veggieName => throw _privateConstructorUsedError;
  List<MyVeggieRoutineInfoModel> get myVeggieRoutineList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RoutineListModelCopyWith<RoutineListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineListModelCopyWith<$Res> {
  factory $RoutineListModelCopyWith(
          RoutineListModel value, $Res Function(RoutineListModel) then) =
      _$RoutineListModelCopyWithImpl<$Res, RoutineListModel>;
  @useResult
  $Res call(
      {String nickname,
      String veggieName,
      List<MyVeggieRoutineInfoModel> myVeggieRoutineList});
}

/// @nodoc
class _$RoutineListModelCopyWithImpl<$Res, $Val extends RoutineListModel>
    implements $RoutineListModelCopyWith<$Res> {
  _$RoutineListModelCopyWithImpl(this._value, this._then);

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
abstract class _$$RoutineListModelImplCopyWith<$Res>
    implements $RoutineListModelCopyWith<$Res> {
  factory _$$RoutineListModelImplCopyWith(_$RoutineListModelImpl value,
          $Res Function(_$RoutineListModelImpl) then) =
      __$$RoutineListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickname,
      String veggieName,
      List<MyVeggieRoutineInfoModel> myVeggieRoutineList});
}

/// @nodoc
class __$$RoutineListModelImplCopyWithImpl<$Res>
    extends _$RoutineListModelCopyWithImpl<$Res, _$RoutineListModelImpl>
    implements _$$RoutineListModelImplCopyWith<$Res> {
  __$$RoutineListModelImplCopyWithImpl(_$RoutineListModelImpl _value,
      $Res Function(_$RoutineListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? veggieName = null,
    Object? myVeggieRoutineList = null,
  }) {
    return _then(_$RoutineListModelImpl(
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
class _$RoutineListModelImpl implements _RoutineListModel {
  const _$RoutineListModelImpl(
      {required this.nickname,
      required this.veggieName,
      required final List<MyVeggieRoutineInfoModel> myVeggieRoutineList})
      : _myVeggieRoutineList = myVeggieRoutineList;

  factory _$RoutineListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineListModelImplFromJson(json);

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
    return 'RoutineListModel(nickname: $nickname, veggieName: $veggieName, myVeggieRoutineList: $myVeggieRoutineList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineListModelImpl &&
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
  _$$RoutineListModelImplCopyWith<_$RoutineListModelImpl> get copyWith =>
      __$$RoutineListModelImplCopyWithImpl<_$RoutineListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineListModelImplToJson(
      this,
    );
  }
}

abstract class _RoutineListModel implements RoutineListModel {
  const factory _RoutineListModel(
          {required final String nickname,
          required final String veggieName,
          required final List<MyVeggieRoutineInfoModel> myVeggieRoutineList}) =
      _$RoutineListModelImpl;

  factory _RoutineListModel.fromJson(Map<String, dynamic> json) =
      _$RoutineListModelImpl.fromJson;

  @override
  String get nickname;
  @override
  String get veggieName;
  @override
  List<MyVeggieRoutineInfoModel> get myVeggieRoutineList;
  @override
  @JsonKey(ignore: true)
  _$$RoutineListModelImplCopyWith<_$RoutineListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
