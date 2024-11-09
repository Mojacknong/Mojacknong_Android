// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_veggie_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyVeggieInfoModel _$MyVeggieInfoModelFromJson(Map<String, dynamic> json) {
  return _MyVeggieInfoModel.fromJson(json);
}

/// @nodoc
mixin _$MyVeggieInfoModel {
  String get nickname => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get veggieName => throw _privateConstructorUsedError;
  String get birthDay => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;
  int get myVeggieId => throw _privateConstructorUsedError;

  /// Serializes this MyVeggieInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MyVeggieInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MyVeggieInfoModelCopyWith<MyVeggieInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVeggieInfoModelCopyWith<$Res> {
  factory $MyVeggieInfoModelCopyWith(
          MyVeggieInfoModel value, $Res Function(MyVeggieInfoModel) then) =
      _$MyVeggieInfoModelCopyWithImpl<$Res, MyVeggieInfoModel>;
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
class _$MyVeggieInfoModelCopyWithImpl<$Res, $Val extends MyVeggieInfoModel>
    implements $MyVeggieInfoModelCopyWith<$Res> {
  _$MyVeggieInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MyVeggieInfoModel
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$MyVeggieInfoModelImplCopyWith<$Res>
    implements $MyVeggieInfoModelCopyWith<$Res> {
  factory _$$MyVeggieInfoModelImplCopyWith(_$MyVeggieInfoModelImpl value,
          $Res Function(_$MyVeggieInfoModelImpl) then) =
      __$$MyVeggieInfoModelImplCopyWithImpl<$Res>;
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
class __$$MyVeggieInfoModelImplCopyWithImpl<$Res>
    extends _$MyVeggieInfoModelCopyWithImpl<$Res, _$MyVeggieInfoModelImpl>
    implements _$$MyVeggieInfoModelImplCopyWith<$Res> {
  __$$MyVeggieInfoModelImplCopyWithImpl(_$MyVeggieInfoModelImpl _value,
      $Res Function(_$MyVeggieInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MyVeggieInfoModel
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$MyVeggieInfoModelImpl(
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
class _$MyVeggieInfoModelImpl implements _MyVeggieInfoModel {
  const _$MyVeggieInfoModelImpl(
      {required this.nickname,
      required this.image,
      required this.veggieName,
      required this.birthDay,
      required this.period,
      required this.myVeggieId});

  factory _$MyVeggieInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyVeggieInfoModelImplFromJson(json);

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
    return 'MyVeggieInfoModel(nickname: $nickname, image: $image, veggieName: $veggieName, birthDay: $birthDay, period: $period, myVeggieId: $myVeggieId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyVeggieInfoModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, nickname, image, veggieName, birthDay, period, myVeggieId);

  /// Create a copy of MyVeggieInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MyVeggieInfoModelImplCopyWith<_$MyVeggieInfoModelImpl> get copyWith =>
      __$$MyVeggieInfoModelImplCopyWithImpl<_$MyVeggieInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyVeggieInfoModelImplToJson(
      this,
    );
  }
}

abstract class _MyVeggieInfoModel implements MyVeggieInfoModel {
  const factory _MyVeggieInfoModel(
      {required final String nickname,
      required final String image,
      required final String veggieName,
      required final String birthDay,
      required final int period,
      required final int myVeggieId}) = _$MyVeggieInfoModelImpl;

  factory _MyVeggieInfoModel.fromJson(Map<String, dynamic> json) =
      _$MyVeggieInfoModelImpl.fromJson;

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

  /// Create a copy of MyVeggieInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MyVeggieInfoModelImplCopyWith<_$MyVeggieInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
