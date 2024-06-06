// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_veggie_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyVeggieInfo _$MyVeggieInfoFromJson(Map<String, dynamic> json) {
  return _MyVeggieInfo.fromJson(json);
}

/// @nodoc
mixin _$MyVeggieInfo {
  String get nickname => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get veggieName => throw _privateConstructorUsedError;
  String get birthDay => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;
  int get myVeggieId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyVeggieInfoCopyWith<MyVeggieInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVeggieInfoCopyWith<$Res> {
  factory $MyVeggieInfoCopyWith(
          MyVeggieInfo value, $Res Function(MyVeggieInfo) then) =
      _$MyVeggieInfoCopyWithImpl<$Res, MyVeggieInfo>;
  @useResult
  $Res call(
      {String nickname,
      String image,
      String veggieName,
      String birthDay,
      int period,
      int myVeggieId});
}

/// @nodoc
class _$MyVeggieInfoCopyWithImpl<$Res, $Val extends MyVeggieInfo>
    implements $MyVeggieInfoCopyWith<$Res> {
  _$MyVeggieInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? image = null,
    Object? veggieName = null,
    Object? birthDay = null,
    Object? period = null,
    Object? myVeggieId = null,
  }) {
    return _then(_value.copyWith(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      veggieName: null == veggieName
          ? _value.veggieName
          : veggieName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDay: null == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      myVeggieId: null == myVeggieId
          ? _value.myVeggieId
          : myVeggieId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyVeggieInfoImplCopyWith<$Res>
    implements $MyVeggieInfoCopyWith<$Res> {
  factory _$$MyVeggieInfoImplCopyWith(
          _$MyVeggieInfoImpl value, $Res Function(_$MyVeggieInfoImpl) then) =
      __$$MyVeggieInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickname,
      String image,
      String veggieName,
      String birthDay,
      int period,
      int myVeggieId});
}

/// @nodoc
class __$$MyVeggieInfoImplCopyWithImpl<$Res>
    extends _$MyVeggieInfoCopyWithImpl<$Res, _$MyVeggieInfoImpl>
    implements _$$MyVeggieInfoImplCopyWith<$Res> {
  __$$MyVeggieInfoImplCopyWithImpl(
      _$MyVeggieInfoImpl _value, $Res Function(_$MyVeggieInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? image = null,
    Object? veggieName = null,
    Object? birthDay = null,
    Object? period = null,
    Object? myVeggieId = null,
  }) {
    return _then(_$MyVeggieInfoImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      veggieName: null == veggieName
          ? _value.veggieName
          : veggieName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDay: null == birthDay
          ? _value.birthDay
          : birthDay // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      myVeggieId: null == myVeggieId
          ? _value.myVeggieId
          : myVeggieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyVeggieInfoImpl implements _MyVeggieInfo {
  const _$MyVeggieInfoImpl(
      {required this.nickname,
      required this.image,
      required this.veggieName,
      required this.birthDay,
      required this.period,
      required this.myVeggieId});

  factory _$MyVeggieInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyVeggieInfoImplFromJson(json);

  @override
  final String nickname;
  @override
  final String image;
  @override
  final String veggieName;
  @override
  final String birthDay;
  @override
  final int period;
  @override
  final int myVeggieId;

  @override
  String toString() {
    return 'MyVeggieInfo(nickname: $nickname, image: $image, veggieName: $veggieName, birthDay: $birthDay, period: $period, myVeggieId: $myVeggieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyVeggieInfoImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.veggieName, veggieName) ||
                other.veggieName == veggieName) &&
            (identical(other.birthDay, birthDay) ||
                other.birthDay == birthDay) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.myVeggieId, myVeggieId) ||
                other.myVeggieId == myVeggieId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, nickname, image, veggieName, birthDay, period, myVeggieId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyVeggieInfoImplCopyWith<_$MyVeggieInfoImpl> get copyWith =>
      __$$MyVeggieInfoImplCopyWithImpl<_$MyVeggieInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyVeggieInfoImplToJson(
      this,
    );
  }
}

abstract class _MyVeggieInfo implements MyVeggieInfo {
  const factory _MyVeggieInfo(
      {required final String nickname,
      required final String image,
      required final String veggieName,
      required final String birthDay,
      required final int period,
      required final int myVeggieId}) = _$MyVeggieInfoImpl;

  factory _MyVeggieInfo.fromJson(Map<String, dynamic> json) =
      _$MyVeggieInfoImpl.fromJson;

  @override
  String get nickname;
  @override
  String get image;
  @override
  String get veggieName;
  @override
  String get birthDay;
  @override
  int get period;
  @override
  int get myVeggieId;
  @override
  @JsonKey(ignore: true)
  _$$MyVeggieInfoImplCopyWith<_$MyVeggieInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
