// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_veggie_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MyVeggieProfile _$MyVeggieProfileFromJson(Map<String, dynamic> json) {
  return _MyVeggieProfile.fromJson(json);
}

/// @nodoc
mixin _$MyVeggieProfile {
  String get nickname => throw _privateConstructorUsedError;
  String get veggieName => throw _privateConstructorUsedError;
  String get veggieImage => throw _privateConstructorUsedError;
  String get createdVeggie => throw _privateConstructorUsedError;
  int get period => throw _privateConstructorUsedError;
  int get step => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyVeggieProfileCopyWith<MyVeggieProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyVeggieProfileCopyWith<$Res> {
  factory $MyVeggieProfileCopyWith(
          MyVeggieProfile value, $Res Function(MyVeggieProfile) then) =
      _$MyVeggieProfileCopyWithImpl<$Res, MyVeggieProfile>;
  @useResult
  $Res call(
      {String nickname,
      String veggieName,
      String veggieImage,
      String createdVeggie,
      int period,
      int step});
}

/// @nodoc
class _$MyVeggieProfileCopyWithImpl<$Res, $Val extends MyVeggieProfile>
    implements $MyVeggieProfileCopyWith<$Res> {
  _$MyVeggieProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? veggieName = null,
    Object? veggieImage = null,
    Object? createdVeggie = null,
    Object? period = null,
    Object? step = null,
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
      veggieImage: null == veggieImage
          ? _value.veggieImage
          : veggieImage // ignore: cast_nullable_to_non_nullable
              as String,
      createdVeggie: null == createdVeggie
          ? _value.createdVeggie
          : createdVeggie // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MyVeggieProfileImplCopyWith<$Res>
    implements $MyVeggieProfileCopyWith<$Res> {
  factory _$$MyVeggieProfileImplCopyWith(_$MyVeggieProfileImpl value,
          $Res Function(_$MyVeggieProfileImpl) then) =
      __$$MyVeggieProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nickname,
      String veggieName,
      String veggieImage,
      String createdVeggie,
      int period,
      int step});
}

/// @nodoc
class __$$MyVeggieProfileImplCopyWithImpl<$Res>
    extends _$MyVeggieProfileCopyWithImpl<$Res, _$MyVeggieProfileImpl>
    implements _$$MyVeggieProfileImplCopyWith<$Res> {
  __$$MyVeggieProfileImplCopyWithImpl(
      _$MyVeggieProfileImpl _value, $Res Function(_$MyVeggieProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickname = null,
    Object? veggieName = null,
    Object? veggieImage = null,
    Object? createdVeggie = null,
    Object? period = null,
    Object? step = null,
  }) {
    return _then(_$MyVeggieProfileImpl(
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      veggieName: null == veggieName
          ? _value.veggieName
          : veggieName // ignore: cast_nullable_to_non_nullable
              as String,
      veggieImage: null == veggieImage
          ? _value.veggieImage
          : veggieImage // ignore: cast_nullable_to_non_nullable
              as String,
      createdVeggie: null == createdVeggie
          ? _value.createdVeggie
          : createdVeggie // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MyVeggieProfileImpl implements _MyVeggieProfile {
  const _$MyVeggieProfileImpl(
      {required this.nickname,
      required this.veggieName,
      required this.veggieImage,
      required this.createdVeggie,
      required this.period,
      required this.step});

  factory _$MyVeggieProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$MyVeggieProfileImplFromJson(json);

  @override
  final String nickname;
  @override
  final String veggieName;
  @override
  final String veggieImage;
  @override
  final String createdVeggie;
  @override
  final int period;
  @override
  final int step;

  @override
  String toString() {
    return 'MyVeggieProfile(nickname: $nickname, veggieName: $veggieName, veggieImage: $veggieImage, createdVeggie: $createdVeggie, period: $period, step: $step)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MyVeggieProfileImpl &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.veggieName, veggieName) ||
                other.veggieName == veggieName) &&
            (identical(other.veggieImage, veggieImage) ||
                other.veggieImage == veggieImage) &&
            (identical(other.createdVeggie, createdVeggie) ||
                other.createdVeggie == createdVeggie) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.step, step) || other.step == step));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nickname, veggieName,
      veggieImage, createdVeggie, period, step);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MyVeggieProfileImplCopyWith<_$MyVeggieProfileImpl> get copyWith =>
      __$$MyVeggieProfileImplCopyWithImpl<_$MyVeggieProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MyVeggieProfileImplToJson(
      this,
    );
  }
}

abstract class _MyVeggieProfile implements MyVeggieProfile {
  const factory _MyVeggieProfile(
      {required final String nickname,
      required final String veggieName,
      required final String veggieImage,
      required final String createdVeggie,
      required final int period,
      required final int step}) = _$MyVeggieProfileImpl;

  factory _MyVeggieProfile.fromJson(Map<String, dynamic> json) =
      _$MyVeggieProfileImpl.fromJson;

  @override
  String get nickname;
  @override
  String get veggieName;
  @override
  String get veggieImage;
  @override
  String get createdVeggie;
  @override
  int get period;
  @override
  int get step;
  @override
  @JsonKey(ignore: true)
  _$$MyVeggieProfileImplCopyWith<_$MyVeggieProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
